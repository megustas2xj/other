package main

import (
	"demo/src/util"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"regexp"
	"strings"
)

/**
 *
 * @project: line
 * @Author: zzw
 * @Date: 2020/07/15 15:42
 * @Description:
 */

var root="D:/backing/thrift/info/sources"
var root1="D:/backing/thrift/info/sources1"
var root2="D:/backing/thrift/info/sources2"
var root3="D:/backing/thrift/info/sources3"
var root4="D:/backing/thrift/info/sources4"
var root5="D:/backing/thrift/info/sources5"


//筛选文件
func findDir(root string){

	dirs,_:=ioutil.ReadDir(root)
	for _,v:=range dirs{
		fullPath:=root+"\\"+v.Name()
		if v.IsDir(){
			findDir(fullPath)
		}else {
			content,_:=ioutil.ReadFile(fullPath)
			str:=string(content)
			if strings.Index(str,"new d9.a.b.r.k(")>0{
				newPath:=strings.ReplaceAll(root,"sources","sources1")
				os.MkdirAll(newPath,0777)
				ioutil.WriteFile(newPath+"\\"+v.Name(),content,0777)
			}
		}
	}
}

//筛选文件内容
func findContent(root1 string){

	dirs,_:=ioutil.ReadDir(root1)
	for _,v:=range dirs{
		fullPath:=root1+"\\"+v.Name()
		if v.IsDir(){
			findContent(fullPath)
		}else {
			content,_:=ioutil.ReadFile(fullPath)
			str:=string(content)
			if str!=""{
				newPath:=strings.ReplaceAll(root1,"sources1","sources2")
				os.MkdirAll(newPath,0777)
				f,_:=os.OpenFile(newPath+"\\"+v.Name(),os.O_WRONLY|os.O_CREATE, 0644)
				n, _ := f.Seek(0, os.SEEK_END)
				var toWrite string
				className:=regexp.MustCompile(`(new\sd9\.a\.b\.r\.k.*\);)`).FindAllString(str,-1)
				if len(className)>0{
					toWrite=className[0]+"\n"
				}
				for _,info1:=range regexp.MustCompile(`(new\sd9\.a\.b\.r\.b.*\);)`).FindAllString(str,-1){
					if info1!=""{
						toWrite=toWrite+info1+"\n"
					}
				}
				for _,info2:=range regexp.MustCompile(`(new\sd9\.a\.b\.q\.b.*\;)`).FindAllString(str,-1) {
					if info2!=""{
						toWrite=toWrite+info2+"\n"
					}
				}
				f.WriteAt([]byte(toWrite), n)
				defer f.Close()
			}
		}
	}
}

//反混淆
func deConfusion(root2 string){

	dirs,err:=ioutil.ReadDir(root2)
	log.Println(err)
	for _,v:=range dirs{
		fullPath:=root2+"\\"+v.Name()
		if v.IsDir(){
			deConfusion(fullPath)
		}else {
			content,_:=ioutil.ReadFile(fullPath)
			str:=string(content)
			if str!=""{
				newPath:=strings.ReplaceAll(root2,"sources2","sources3")
				os.MkdirAll(newPath,0777)
				f,_:=os.OpenFile(newPath+"\\"+v.Name(),os.O_WRONLY|os.O_CREATE, 0644)
				n, _ := f.Seek(0, os.SEEK_END)
				//var toWrite string
				deABRK:=strings.ReplaceAll(str,"d9.a.b.r.k","TStruct")
				deABRB:=strings.ReplaceAll(deABRK,"d9.a.b.r.b","TField")
				deABQB:=strings.ReplaceAll(deABRB,"d9.a.b.q.b","FieldMetaData")
				deByte1:=strings.ReplaceAll(deABQB,"(byte) 1, new ","REQUIRED, new")
				deByte2:=strings.ReplaceAll(deByte1,"(byte) 2, new ","OPTIONAL, new")
				deByte3:=strings.ReplaceAll(deByte2,"(byte) 3, new ","DEFAULT, new")
				deABQC:=strings.ReplaceAll(deByte3,"d9.a.b.q.c"," FieldValueMetaData")
				deABQD:=strings.ReplaceAll(deABQC,"d9.a.b.q.d"," ListMetaData")
				deABQG:=strings.ReplaceAll(deABQD,"d9.a.b.q.g"," StructMetaData")
				deABQA:=strings.ReplaceAll(deABQG,"d9.a.b.q.a"," EnumMetaData")
				deABQE:=strings.ReplaceAll(deABQA,"d9.a.b.q.e"," MapMetaData")
				deABQF:=strings.ReplaceAll(deABQE,"d9.a.b.q.f"," SetMetaData")
				space:=strings.ReplaceAll(deABQF,"  "," ")
				f.WriteAt([]byte(space), n)
				defer f.Close()
			}
		}
	}
}

//类、枚举
func deStruct(root string){

	dirs,_:=ioutil.ReadDir(root)
	for _,v:=range dirs{
		fullPath:=root+"\\"+v.Name()
		if v.IsDir(){
			deStruct(fullPath)
		}else {
			content,_:=ioutil.ReadFile(fullPath)
			str:=string(content)
			var EnClassName string
			var DeClassName string
			var contentInfo string
			contentInfo=str
			//结构体
			if strings.Index(str,"StructMetaData((byte) 12")>0{
				for _,v:=range regexp.MustCompile(`(StructMetaData.*\);)`).FindAllString(str,-1){
					if v!=""{
						EnClassName=util.GetClass(v)
						content,_:=ioutil.ReadFile(root3+"\\"+strings.ReplaceAll(EnClassName,".","\\")+".java")
						for _,v:=range regexp.MustCompile(`(new\sTStruct.*)`).FindAllString(string(content),-1){
							DeClassName=util.CallClassName(v)
						}
						contentInfo=strings.ReplaceAll(contentInfo,EnClassName+".class",util.ReplaceClass(EnClassName,DeClassName))
					}
				}
			}
			//类名
			var saveClassName string
			newPath:=strings.ReplaceAll(root,"sources3","sources4")
			for _,v:=range regexp.MustCompile(`(new\sTStruct.*)`).FindAllString(string(content),-1){
				if v!="new TStruct();"{
					saveClassName=util.CallClassName(v)+".java"
				}
			}
			os.MkdirAll(newPath,0777)
			ioutil.WriteFile(newPath+"\\"+saveClassName,[]byte(contentInfo),0777)

			if strings.Index(str,"new EnumMetaData((byte) 16,")>0{
				for _,v:=range regexp.MustCompile(`(EnumMetaData.*\);)`).FindAllString(str,-1){
					enumClassName:=util.CallEnumClass(v)
					listInfo:=make([]string,0)
					enumContent,_:=ioutil.ReadFile("D:/backing/thrift/info/sources"+"\\"+strings.ReplaceAll(enumClassName,".","\\")+".java")
						for _,info:=range regexp.MustCompile(`(\w.*\((\d+)\))`).FindAllString(string(enumContent),-1){
							listInfo= append(listInfo, info)
						}
					ioutil.WriteFile(newPath+"\\"+strings.Split(enumClassName,".")[len(strings.Split(enumClassName, "."))-1]+".java",[]byte(strings.Join(listInfo,"\n")),0777)
				}
			}
		}
	}
}

func enThrift(root string){

	dirs,err:=ioutil.ReadDir(root)
	log.Println(err)
	for _,v:=range dirs{
		fullPath:=root+"\\"+v.Name()
		log.Println(fullPath)
		if v.IsDir(){
			enThrift(fullPath)
		}else {
			Content,_:=ioutil.ReadFile(fullPath)
			str:=string(Content)
			if strings.Index(str,"FieldMetaData")>0&&strings.Index(str,"_args")<0&&strings.Index(str,"_result")<0{
				newPath:=strings.ReplaceAll(root,"sources4","sources5")
				os.MkdirAll(newPath,0777)
				var base string
				TStruct:=util.CallClassName(regexp.MustCompile(`(new\sTStruct.*)`).FindString(str))
				f,_:=os.OpenFile(newPath+"\\"+v.Name(),os.O_WRONLY|os.O_CREATE, 0644)
				log.Println(TStruct)
				if strings.Index(TStruct,"Exception")>-1{
					base=fmt.Sprintf("exception %s{\n",TStruct)
				}else {
					base=fmt.Sprintf("struct %s{\n",TStruct)
				}
				var toWrite string
				n, _ := f.Seek(0, os.SEEK_END)
				for _,v:=range regexp.MustCompile(`(TField.*)`).FindAllString(str,-1){
					number,TField:=util.TField(v)
					log.Println(TField)
					for _,s:=range regexp.MustCompile(`(FieldMetaData.*\);)`).FindAllString(str,-1){
						log.Println(s)
						var c []byte
						if strings.Index(s,TField)>0{
							if 	strings.ReplaceAll(regexp.MustCompile(`(".*",)`).FindString(s),",","")==fmt.Sprintf(`"%s"`,TField){
								log.Println(regexp.MustCompile(`(".*")`).FindString(s),TField)
								TFieldRequirementType,MetaDataType:=util.FieldMetaData(s,TField)
								c=util.CreateThrift(number,TFieldRequirementType,MetaDataType,TField)
								log.Println(number,TFieldRequirementType,MetaDataType,TField)
							}
							toWrite=toWrite+string(c)
						}
					}
					f.WriteAt([]byte(base+toWrite+"}\n\n"),n)
					defer f.Close()
				}
			}
			}
		}
	}

func enThriftEnum(root string) {

	dirs, _ := ioutil.ReadDir(root)
	for _, v := range dirs {
		fullPath := root + "\\" + v.Name()
		if v.IsDir() {
			enThriftEnum(fullPath)
		} else {
			Content, _ := ioutil.ReadFile(fullPath)
			str := string(Content)
			if strings.Index(str, "TStruct") < 0 {
				log.Println("fullPath",fullPath)
				base:=fmt.Sprintf("enum %s{\n",util.EnumPath(fullPath))
				log.Println(base)
				var toWrite string
				for _,v:=range regexp.MustCompile(`(.*)`).FindAllString(str,-1){
					var c []byte
					if v!=""{
						log.Println(v)
						params:=v[0:strings.Index(v,"(")]
						log.Println(params)
						c=util.CreateThriftEnum(params,regexp.MustCompile(`(\d+)`).FindString(v))
						toWrite=toWrite+string(c)
					}
				}
				util.Write("line.thrift",base+toWrite+"}\n\n")
			}
		}
	}
}


func WriteThrift(root string){

	log.Println(root)
	dirs,_:=ioutil.ReadDir(root)
	for _,v:=range dirs{
		fullPath:=root+"\\"+v.Name()
		log.Println(fullPath)
		if v.IsDir(){
			WriteThrift(fullPath)
		}else {
			Content,_:=ioutil.ReadFile(fullPath)
			str:=string(Content)
			log.Println(str)
			util.Write("line.thrift",str)
		}
	}
}



