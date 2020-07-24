package util

import (
	"fmt"
	"github.com/satori/go.uuid"
	"log"
	"regexp"
	"runtime"
	"strconv"
	"strings"
)

/**
 *
 * @project: 工具
 * @Author: zzw
 * @Date: 2020/07/10 13:07
 * @Description:
 */

func PrintErr(err error){

	if err!=nil{
		_,file,line,_:=runtime.Caller(1)
		log.Println(fmt.Sprintf("%s-----line:[%v]:%s",file,line,err))
	}
}

func CallUUID() string {
	return strings.ReplaceAll(fmt.Sprintf("%v", uuid.NewV4()), "-", "")
}

func CallClassName(str string) string{

	left:=strings.Index(str,"TStruct(\"")
	right:=strings.LastIndex(str,"\");")
	return strings.ReplaceAll(str[left+1:right],"Struct(\"","")
}

func CallArgsName(str string) string{

	left:=strings.Index(str,"TStruct(\"")
	right:=strings.LastIndex(str,"\");")
	s:=strings.ReplaceAll(str[left+1:right],"Struct(\"","")
	return strings.ReplaceAll(s,"_args","")
}

func CallResult(str string) string{

	left:=strings.Index(str,"TStruct(\"")
	right:=strings.LastIndex(str,"\");")
	s:=strings.ReplaceAll(str[left+1:right],"Struct(\"","")
	return strings.ReplaceAll(s,"_args","")
}

func GetClass(str string) string{

	left:=strings.Index(str,"(byte) 12, ")
	right:=strings.LastIndex(str,".class)")
	return strings.ReplaceAll(str[left:right],"(byte) 12, ","")
}

func ReplaceClass(str,DeClassName string) string{

	strs:=strings.Split(str+".class",".")
	strs[len(strs)-2]=DeClassName
	//log.Println(strings.Join(strs,"."))
	return strings.Join(strs,".")
}

func CallEnumClass(v string) string{

	left:=strings.Index(v,"(byte) 16, ")
	right:=strings.Index(v,".class)")
	log.Println(strings.ReplaceAll(v[left:right],"(byte) 16, ",""))
	return strings.ReplaceAll(v[left:right],"(byte) 16, ","")
}

func EnumClass(str string) string{

	return strings.Split(str,".")[len(strings.Split(str, "."))-2]
}

func EnumClassV2(str string) string{

	str=strings.ReplaceAll(str,".class","")
	str=strings.ReplaceAll(str,".","_")
	str=strings.ReplaceAll(str,")","")
	return str
}

func CallTFieldRequirementType(str,comp string) string{

	l:=strings.Index(str,fmt.Sprintf(`"%s",`,comp))
	r:=strings.Index(str,", new")
	return strings.ReplaceAll(str[l+len(comp)+3:r]," ","")
}

func TField(str string) (TField,number string){

	left:=strings.Index(str,"(\"")
	right:=strings.Index(str,");")
	strList:=strings.Split(strings.ReplaceAll(str[left+2:right],"\"",""),",")
	number=strings.ReplaceAll(strList[2]," ","")
	TField=strings.ReplaceAll(strList[0]," ","")
	return number,TField
}

func FieldValueMetaData(str string) (MetaDataType string){

		info:=regexp.MustCompile(`(FieldValueMetaData.*)`).FindString(str)
		if strings.Index(info,",")>0{
			if strings.Index(info,"true")>0||strings.Index(info,"str")>0{
				typeNum:=regexp.MustCompile(`\d+`).FindString(info)
				MetaDataType=CallType(typeNum)
				log.Println(MetaDataType)
			}
			s:=strings.Index(info,", \"")
			s1:=strings.Index(info,"\")")
			if s!=-1&&s1!=-1{
				MetaDataType=info[s+3:s1]
			}
			log.Println("MetaDataType",MetaDataType)
		}else {
			typeNum:=strings.ReplaceAll(regexp.MustCompile(`(FieldValueMetaData.*\d)`).FindString(str),"FieldValueMetaData((byte) ","")
			MetaDataType=CallType(typeNum)
		}
	return MetaDataType
}

func StructMetaData(str string) (MetaDataType string){

	className:=GetClass(regexp.MustCompile(`(StructMetaData.*\);)`).FindString(str))
	log.Println(className)
	MetaDataType=className[strings.LastIndex(className,".")+1:]
	log.Println(MetaDataType)
	return MetaDataType
}

func ListMetaData(str string) (MetaDataType string){

		info:=regexp.MustCompile(`(ListMetaData.*\);)`).FindString(str)
		info=strings.ReplaceAll(info,"))));","")
		info=strings.ReplaceAll(info,")))));","")
		infoMsg:=strings.Split(info,",")

		//StructMetaData
		if strings.Index(infoMsg[1],"StructMetaData")>0{
			ClassName:=strings.ReplaceAll(infoMsg[len(infoMsg)-1],".class","")
			ClassName=ClassName[strings.LastIndex(ClassName,".")+1:]
			log.Println(ClassName)
			MetaDataType=fmt.Sprintf("list<%s>",ClassName)
		}
		//FieldValueMetaData
		if strings.Index(infoMsg[1],"FieldValueMetaData")>0{
			info:=regexp.MustCompile(`(FieldValueMetaData.*)`).FindString(str)
			if strings.Index(info,",")>0{
				if strings.Index(info,"str")>0||strings.Index(info,"true")>0{
					MetaDataType=fmt.Sprintf("list<%s>",CallType(regexp.MustCompile(`(\d+)`).FindString(info)))
				}
				s:=strings.Index(str,", \"")
				s1:=strings.Index(str,"\")")
				if s!=-1&&s1!=-1{
					MetaDataType=fmt.Sprintf("list<%s>",str[s+3:s1])
				}
			}else {
				typeNum:=strings.ReplaceAll(regexp.MustCompile(`(FieldValueMetaData.*\d)`).FindString(str),"FieldValueMetaData((byte) ","")
				MetaDataType=fmt.Sprintf("list<%s>",CallType(typeNum))
			}
		}
		//ListMetaData
		if strings.Index(infoMsg[1],"ListMetaData")>0 {

			ClassName:=strings.ReplaceAll(infoMsg[len(infoMsg)-1],".class","")
			if strings.Index(ClassName[strings.LastIndex(ClassName,".")+1:],")")>-1{
				ClassName=strings.ReplaceAll(ClassName[strings.LastIndex(ClassName,".")+1:],")","")
			}
			ClassName=strings.ReplaceAll(ClassName,".","_")
			log.Println(ClassName)
			MetaDataType=fmt.Sprintf("list<list<%s>>",ClassName)
		}
		//EnumMetaData
		if strings.Index(infoMsg[1],"EnumMetaData")>0 {
			ClassName:=strings.ReplaceAll(infoMsg[len(infoMsg)-1],".class","")
			ClassName=strings.ReplaceAll(ClassName,".","_")
			log.Println(ClassName)
			MetaDataType=fmt.Sprintf("list<%s>",ClassName)
		}
		//MapMetaData
		if strings.Index(infoMsg[1],"MapMetaData")>0 {
			left:=regexp.MustCompile(`\d+`).FindString(infoMsg[len(infoMsg)-1])
			right:=regexp.MustCompile(`\d+`).FindString(infoMsg[len(infoMsg)-2])
			MetaDataType=fmt.Sprintf("list<map<%s,%s>>",CallType(left),CallType(right))
		}
		return MetaDataType
}

func EnumMetaData(str string) (MetaDataType string){

	info:=regexp.MustCompile(`(EnumMetaData.*\);)`).FindString(str)
	info=strings.ReplaceAll(info,")));","")
	infoMsg:=strings.Split(info,",")
	ClassName:=strings.ReplaceAll(infoMsg[len(infoMsg)-1],".class","")
	//ClassName=ClassName[strings.LastIndex(ClassName,".")+1:]
	ClassName=strings.ReplaceAll(ClassName,".","_")

	return ClassName
}

func SetMetaData(str string) (MetaDataType string){

	info:=regexp.MustCompile(`(SetMetaData.*\);)`).FindString(str)
	info=strings.ReplaceAll(info,"))));","")
	infoMsg:=strings.Split(info,",")
	if len(infoMsg)>2{
		if strings.Index(infoMsg[1],"EnumMetaData")>0{
			MetaDataType=fmt.Sprintf(`set<%s>`,EnumClassV2(infoMsg[len(infoMsg)-1]))
			log.Println(MetaDataType)
		}
		if  strings.Index(infoMsg[1],"FieldValueMetaData")>0{
			sb:=strings.ReplaceAll(infoMsg[len(infoMsg)-1],"\"","")
			log.Println(sb)
			MetaDataType=fmt.Sprintf("set<%s>",sb)
			log.Println(MetaDataType)
		}
		if  strings.Index(infoMsg[1],"StructMetaData")>0{
			MetaDataType=fmt.Sprintf(`set<%s>`,EnumClass(infoMsg[len(infoMsg)-1]))
			log.Println(MetaDataType)
		}

	}
	if len(infoMsg)==2{
		typeNum:=strings.ReplaceAll(regexp.MustCompile(`(FieldValueMetaData.*\d)`).FindString(str),"FieldValueMetaData((byte) ","")
		MetaDataType=fmt.Sprintf("set<%s>",CallType(typeNum))
	}
	return MetaDataType
}

func MapMetaData(str string) (MetaDataType string){

	var left,right string
	leftMsg:=regexp.MustCompile(`(MapMetaData.*\),)`).FindString(str)
	if len(strings.Split(leftMsg, ","))==3{
		left=CallType(regexp.MustCompile(`(\d+)`).FindString(strings.Split(leftMsg, ",")[1]))
	}
	if len(strings.Split(leftMsg, ","))==4&&strings.Index(leftMsg,"new FieldValueMetaData")>0{
		left=strings.Split(leftMsg, ",")[2][strings.Index(strings.Split(leftMsg, ",")[2],"\"")+1:strings.Index(strings.Split(leftMsg, ",")[2],"\")")]
	}
	if len(strings.Split(leftMsg, ","))==6&&strings.Index(leftMsg,"new EnumMetaData")>0{
		left=EnumClassV2(strings.Split(leftMsg, ",")[2])
	}

	if len(strings.Split(leftMsg, ","))==4&&strings.Index(leftMsg,"new EnumMetaData")>0{
		left=EnumClassV2(strings.Split(leftMsg, ",")[2])
	}

	rightMsg:=regexp.MustCompile(`(\),.*\);)`).FindString(str)
	rightMsg=rightMsg[strings.Index(rightMsg,"),")+2:]

	if strings.Index(rightMsg,"new FieldValueMetaData((byte) 11))));")>-1{
		right="string"
	}

	if strings.Index(rightMsg,`new FieldValueMetaData((byte) 10, "Timestamp"))));`)>-1{
		right="Timestamp"
	}

	if strings.Index(rightMsg,`new StructMetaData((byte) 12`)>-1&&len(strings.Split(rightMsg,","))==2{
		right=EnumClass(strings.Split(rightMsg, ",")[1])
	}

	if strings.Index(rightMsg,`new ListMetaData((byte) 15, new StructMetaData((byte) 12`)>-1{
		enumClass:=strings.Split(rightMsg,",")[2]
		right=fmt.Sprintf("list<%s>",EnumClass(enumClass))
	}

	if strings.Index(rightMsg,`new ListMetaData((byte) 15, new FieldValueMetaData((byte) 11,`)>-1{
		right=fmt.Sprintf("list<%s>",regexp.MustCompile(`(\w+)`).FindString(strings.Split(rightMsg,",")[2]))
	}

	if strings.Index(rightMsg,`new ListMetaData((byte) 15, new FieldValueMetaData((byte) 11)))));`)>-1{
		right="list<string>"
	}

	if strings.Index(rightMsg,`new MapMetaData((byte) 13, new FieldValueMetaData((byte) 11), new FieldValueMetaData((byte) 11)))));`)>-1{
		right="map<string,string>"
	}
	MetaDataType=fmt.Sprintf("map<%s,%s>",left,right)
	log.Println(MetaDataType)
	return MetaDataType
}

func FieldMetaData(str,TField string)(str1,str2 string){

	log.Println(str,TField)
	//REQUIRED OPTIONAL DEFAULT
	var MetaDataType,TFieldRequirementType string
	log.Println(str,TField)
	TFieldRequirementType=CallTFieldRequirementType(str,TField)
	log.Println("TFieldRequirementType",TFieldRequirementType,TField)

	if TFieldRequirementType=="DEFAULT"{
		TFieldRequirementType=""
	}
	if TFieldRequirementType=="OPTIONAL"{
		TFieldRequirementType=" optional"
	}
	if TFieldRequirementType=="REQUIRED"{
		TFieldRequirementType=" required"
	}
	log.Println(MetaDataType,TFieldRequirementType)

	if If(str,"FieldValueMetaData"){
		MetaDataType=FieldValueMetaData(str)
	}

	//StructMetaData
	if If(str,"StructMetaData"){
		MetaDataType=StructMetaData(str)
	}

	if If(str,"ListMetaData"){
		MetaDataType=ListMetaData(str)
	}

	//EnumMetaData
	if If(str,"EnumMetaData"){
		MetaDataType=EnumMetaData(str)
	}

	//SetMetaData
	if If(str,"SetMetaData"){
		MetaDataType=SetMetaData(str)
	}
	//MapMetaData
	if If(str,"MapMetaData"){
		MetaDataType=MapMetaData(str)
	}

	return TFieldRequirementType,strings.ReplaceAll(MetaDataType," ","")
}

func CreateThrift(number,TFieldRequirementType,MetaDataType,TField string) []byte{

	id,_:=strconv.Atoi(number)
	if id<=9{
		number=fmt.Sprintf(" %s",number)
	}
	str:=fmt.Sprintf("\t%s:%s %s %s;\n",number,TFieldRequirementType,MetaDataType,TField)
	return []byte(str)
}

func CreateThriftEnum(params,number string ) []byte{

	str:=fmt.Sprintf("\t%s = %s,\n",params,number)
	log.Println(str)
	return []byte(str)

}

func CallType(fType string) string{

	var str string
	switch fType {
	case "0":
		str="stop"
	case "1":
		str="void"
	case "2":
		str="bool"
	case "3":
		str="byte"
	case "4":
		str="double"
	case "6":
		str="i16"
	case "8":
		str="i32"
	case "10":
		str="i64"
	case "11":
		str="string"
	case "12":
		str="struct"
	case "13":
		str="map"
	case "14":
		str="set"
	case "15":
		str="list"
	case "16":
		str="enum"
	}
	return str
}

func EnumPath(str string) string{

	str=strings.ReplaceAll(str,"D:/backing/thrift/info/sources4\\","")
	str=strings.ReplaceAll(str,"\\","_")
	str=strings.ReplaceAll(str,".java","")
	log.Println(str)
	return str

}

func If(str,info string) bool{
	log.Println(info)
	if strings.Index(str,fmt.Sprintf("OPTIONAL, new %s",info))>0||strings.Index(str,fmt.Sprintf("DEFAULT, new %s",info))>0||strings.Index(str,fmt.Sprintf("REQUIRED, new %s",info))>0{
		return true
	}
	return false
}
