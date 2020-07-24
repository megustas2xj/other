package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"path"
	"regexp"
	"strings"
)


func foreach1(dir string) {
	files, _ := ioutil.ReadDir(dir)
	for _, file := range files {
		if file.IsDir() {
			foreach1(path.Join(dir, file.Name()))
		} else {
			buf, _ := ioutil.ReadFile(path.Join(dir, file.Name()))
			str := string(buf)
			if strings.Contains(str, "public static final d9.a.b.r.k") {

				str = process1(str)
				if str != "" {
					newdir := strings.ReplaceAll(dir, "/sources/", "/src1/")
					os.MkdirAll(newdir, 0777)
					ioutil.WriteFile(path.Join(newdir, file.Name()), []byte(str), 0777)
				}
			}
		}
	}
}

func process1(str string) string {
	sb := bytes.NewBuffer(nil)
	for _, code := range strings.Split(str, "d9.a.b.e<") {
		log.Println(code)
		if strings.Contains(code, "public static final d9.a.b.r.k") {
			if !regexp.MustCompile(`new d9\.a\.b\.r\.k\("\w+"\);`).MatchString(code) {
				continue
			}

			for _, s := range regexp.MustCompile(`new d9\.a\.b\.r\.k\(.+\);`).FindAllString(code, -1) {
				sb.WriteString(s + "\n")
			}
			for _, s := range regexp.MustCompile(`new d9\.a\.b\.r\.b\(.+\);`).FindAllString(code, -1) {
				sb.WriteString(s + "\n")
			}
			for _, s := range regexp.MustCompile(`enumMap\.put\(.+\);`).FindAllString(code, -1) {
				sb.WriteString(s + "\n")
			}
			//result---->返回类型
			for _, s := range regexp.MustCompile(`"e:"[\s\S]+?=`).FindAllString(code, -1) {
				e := regexp.MustCompile(`\w+\.[\w\.]+`).FindString(s)
				if len(e) == 0 {
					panic("e")
				}
				sb.WriteString("e=" + e + "\n")
			}
			sb.WriteString("__________________________________________________\n")
		}
	}
	return string(sb.Bytes())
}

func foreach2(dir string) {
	files, _ := ioutil.ReadDir(dir)
	for _, file := range files {
		if file.IsDir() {
			foreach2(path.Join(dir, file.Name()))
		} else {
			buf, _ := ioutil.ReadFile(path.Join(dir, file.Name()))
			str := string(buf)
			str = process2(str)
			if str != "" {
				newdir := strings.ReplaceAll(dir, "/src1/", "/src2/")
				os.MkdirAll(newdir, 0777)
				ioutil.WriteFile(path.Join(newdir, file.Name()), []byte(str), 0777)
			}
		}
	}
}

func process2(str string) string {
	str = strings.ReplaceAll(str, "new d9.a.b.r.k", "TStruct")
	str = strings.ReplaceAll(str, "new d9.a.b.r.b", "TField")
	str = strings.ReplaceAll(str, "(byte) ", "")
	str = strings.ReplaceAll(str, "));", ");")

	str = regexp.MustCompile(`enumMap.+?,\s*`).ReplaceAllString(str, "")

	str = strings.ReplaceAll(str, "new d9.a.b.q.a", "EnumMetaData")
	str = strings.ReplaceAll(str, "new d9.a.b.q.b", "FieldMetaData")
	str = strings.ReplaceAll(str, "new d9.a.b.q.c", "FieldValueMetaData")
	str = strings.ReplaceAll(str, "new d9.a.b.q.d", "ListMetaData")
	str = strings.ReplaceAll(str, "new d9.a.b.q.e", "MapMetaData")
	str = strings.ReplaceAll(str, "new d9.a.b.q.f", "SetMetaData")
	str = strings.ReplaceAll(str, "new d9.a.b.q.g", "StructMetaData")
	return str
}

func foreach3(dir string) {
	files, _ := ioutil.ReadDir(dir)
	for _, file := range files {
		if file.IsDir() {
			foreach3(path.Join(dir, file.Name()))
		} else {
			buf, _ := ioutil.ReadFile(path.Join(dir, file.Name()))
			str := string(buf)
			str = process3(str)
			if str != "" {
				newdir := strings.ReplaceAll(dir, "/src2/", "/src3/")
				newname := strings.ReplaceAll(file.Name(), ".java", ".json")
				os.MkdirAll(newdir, 0777)
				ioutil.WriteFile(path.Join(newdir, newname), []byte(str), 0777)
			}
		}
	}
}

func process3(str string) string {
	msgs := make([]map[string]interface{}, 0)

	for _, code := range strings.Split(str, "__________________________________________________") {
		code = strings.TrimFunc(code, func(r rune) bool {
			// Use TrimFunc with a rune-testing function.
			// ... If rune is a digit in ASCII return true.
			//     These chars are removed.
			//10:换行符、32:空格
			return r == 10 || r == 32
		})
		if code == "" {
			continue
		}
		tstruct := regexp.MustCompile(`TStruct\("(\w+)"\)`).FindStringSubmatch(code)[1]
		tfields := make([]map[string]string, 0)
		for _, ss := range regexp.MustCompile(`TField\("(\w+)", (\d+), (\d+)\);`).FindAllStringSubmatch(code, -1) {
			tfield := make(map[string]string)
			tfield["name"] = ss[1]
			tfield["type"] = ss[2]
			tfield["index"] = ss[3]
			tfields = append(tfields, tfield)
		}

		for _, ss := range regexp.MustCompile(`FieldMetaData\("(\w+)"\s*,\s*(\d+)\s*,\s*(.+)\);`).FindAllStringSubmatch(code, -1) {
			for _, tfield := range tfields {
				if ss[1] == tfield["name"] {
					tfield["requirement"] = ss[2]
					tfield["meta"] = ss[3]
					if ss[1] == "e" && ss[3] == "FieldValueMetaData(12)" {
						e := regexp.MustCompile(`e=([\w\.]+)`).FindStringSubmatch(code)[1]
						tfield["meta"] = "StructMetaData(12, " + e + ".class)"
					}
				}
			}
		}

		msg := map[string]interface{}{
			"tstruct": tstruct,
			"tfields": tfields,
		}
		msgs = append(msgs, msg)
	}

	buf, _ := json.MarshalIndent(msgs, "", "    ")
	return string(buf)
}

func foreach4(dir string) {
	files, _ := ioutil.ReadDir(dir)
	for _, file := range files {
		if file.IsDir() {
			foreach4(path.Join(dir, file.Name()))
		} else {
			buf, _ := ioutil.ReadFile(path.Join(dir, file.Name()))
			str := string(buf)
			log.Println(str)
			str = process4(str)
			if str != "" {
				newdir := strings.ReplaceAll(dir, "/src3/", "/src4/")
				newname := strings.ReplaceAll(file.Name(), ".java", ".json")
				os.MkdirAll(newdir, 0777)
				ioutil.WriteFile(path.Join(newdir, newname), []byte(str), 0777)
			}
		}
	}
}

var TType = map[string]string{
	`0`:  `STOP`,
	`1`:  `VOID`,
	`2`:  `BOOL`,
	`3`:  `I8`,
	`4`:  `DOUBLE`,
	`6`:  `I16`,
	`8`:  `I32`,
	`10`: `I64`,
	`11`: `STRING`,
	`12`: `STRUCT`,
	`13`: `MAP`,
	`14`: `SET`,
	`15`: `LIST`,
	`16`: `ENUM`,
}

var TFieldRequirementType = map[string]string{
	`1`: `REQUIRED`,
	`2`: `OPTIONAL`,
	`3`: `DEFAULT`,
}

type Message struct {
	Tfields []struct {
		Index       string `json:"index"`
		Meta        string `json:"meta"`
		Name        string `json:"name"`
		Requirement string `json:"requirement"`
		Type        string `json:"type"`
		Note        string `json:"note"`
	} `json:"tfields"`
	Tstruct string   `json:"tstruct"`
	TImport []string `json:"timport"`
}

func process4(str string) string {
	msgs := make([]Message, 0)
	json.Unmarshal([]byte(str), &msgs)

	for x, msg := range msgs {
		for y, tfield := range msg.Tfields {
			meta := tfield.Meta

			meta = regexp.MustCompile(`FieldValueMetaData\(\d+\)`).ReplaceAllStringFunc(meta, func(s string) string {
				return TType[regexp.MustCompile(`FieldValueMetaData\((\d+)\)`).FindStringSubmatch(meta)[1]]
			})

			meta = regexp.MustCompile(`EnumMetaData\(16, [\w\.]+\)`).ReplaceAllStringFunc(meta, func(s string) string {
				class := regexp.MustCompile(`EnumMetaData\(16, ([\w\.]+)\)`).FindStringSubmatch(meta)[1]
				msgs[x].Tfields[y].Note = parseEnum(class)
				return "i32"
			})

			meta = regexp.MustCompile(`StructMetaData\(12, [\w\.]+\)`).ReplaceAllStringFunc(meta, func(s string) string {
				class := regexp.MustCompile(`StructMetaData\(12, ([\w\.]+)\)`).FindStringSubmatch(meta)[1]
				log.Println(class)
				array := regexp.MustCompile(`([\w\.]+)\.(\w+)\.class`).FindStringSubmatch(class)
				log.Println(array)
				msgs[x].TImport = append(msgs[x].TImport, array[1])
				n := array[2]
				if regexp.MustCompile(`^[A-Z]`).MatchString(n) {
					return n
				}
				n = parseStruct(class)
				return n
			})

			meta = regexp.MustCompile(`FieldValueMetaData\(\d+,\s*[\w"]+\)`).ReplaceAllStringFunc(meta, func(s string) string {
				t := regexp.MustCompile(`FieldValueMetaData\((\d+), .+?\)`).FindStringSubmatch(meta)[1]
				return TType[t]
			})

			meta = regexp.MustCompile(`SetMetaData\(\d+, [\w\"<>\s,]+\)`).ReplaceAllStringFunc(meta, func(s string) string {
				t := regexp.MustCompile(`SetMetaData\(\d+, ([\w\"<>\s,]+)\)`).FindStringSubmatch(meta)[1]
				return "set<" + t + ">"
			})

			meta = regexp.MustCompile(`ListMetaData\(\d+, [\w\"<>\s,]+\)`).ReplaceAllStringFunc(meta, func(s string) string {
				t := regexp.MustCompile(`ListMetaData\(\d+, ([\w\"<>\s,]+)\)`).FindStringSubmatch(meta)[1]
				return "list<" + t + ">"
			})

			meta = regexp.MustCompile(`MapMetaData\(13, [\w\"<>\s]+, [\w\"<>\s,]+\)`).ReplaceAllStringFunc(meta, func(s string) string {
				t := regexp.MustCompile(`MapMetaData\(13, ([\w\"<>\s]+), ([\w\"<>\s,]+)\)`).FindStringSubmatch(meta)
				return "map<" + t[1] + "," + t[2] + ">"
			})

			//重复一遍用于嵌套
			meta = regexp.MustCompile(`SetMetaData\(\d+, [\w\"<>\s,]+\)`).ReplaceAllStringFunc(meta, func(s string) string {
				t := regexp.MustCompile(`SetMetaData\(\d+, ([\w\"<>\s,]+)\)`).FindStringSubmatch(meta)[1]
				return "set<" + t + ">"
			})

			meta = regexp.MustCompile(`ListMetaData\(\d+, [\w\"<>\s,]+\)`).ReplaceAllStringFunc(meta, func(s string) string {
				t := regexp.MustCompile(`ListMetaData\(\d+, ([\w\"<>\s,]+)\)`).FindStringSubmatch(meta)[1]
				return "list<" + t + ">"
			})

			meta = regexp.MustCompile(`MapMetaData\(13, [\w\"<>\s]+, [\w\"<>\s,]+\)`).ReplaceAllStringFunc(meta, func(s string) string {
				t := regexp.MustCompile(`MapMetaData\(13, ([\w\"<>\s]+), ([\w\"<>\s,]+)\)`).FindStringSubmatch(meta)
				return "map<" + t[1] + "," + t[2] + ">"
			})

			msgs[x].Tfields[y].Meta = meta
		}
	}

	buf, _ := json.MarshalIndent(msgs, "", "    ")
	return string(buf)
}

func foreach5(dir string) {
	files, _ := ioutil.ReadDir(dir)

	all := make([]Message, 0)
	for _, file := range files {
		if file.IsDir() {
			foreach5(path.Join(dir, file.Name()))
		} else {
			buf, _ := ioutil.ReadFile(path.Join(dir, file.Name()))
			msgs := make([]Message, 0)
			json.Unmarshal(buf, &msgs)
			all = append(all, msgs...)
		}
	}

	if len(all) > 0 {
		name := strings.ReplaceAll(dir, "/backing/thrift/info/src4/", "")
		name = strings.ReplaceAll(name, "/", "_")
		os.MkdirAll("json", 0777)
		buf, _ := json.MarshalIndent(all, "", "    ")
		ioutil.WriteFile("./json/"+name+".json", buf, 0777)
	}
}

func main() {
	for k, v := range TType {
		TType[k] = strings.ToLower(v)
	}
	//os.RemoveAll("/Users/mac/Desktop/java/src3")
	//foreach1("D:/backing/thrift/info/sources")//抽取文件
	//foreach2("D:/backing/thrift/info/src1")   //还原混淆
	foreach3("/backing/thrift/info/src2")   //转换成json对象
	//foreach4("/backing/thrift/info/src3") //处理嵌套
	//foreach5("/backing/thrift/info/src4") //合并数据

	//files, _ := ioutil.ReadDir("json")
	//for _, f := range files {
	//	buf, _ := ioutil.ReadFile(path.Join("json", f.Name()))
	//	handleJson(strings.ReplaceAll(f.Name(), ".json", ""), buf)
	//}
}

func handleJson(name string, buf []byte) {
	msgs := make([]Message, 0)
	json.Unmarshal(buf, &msgs)

	sb := bytes.NewBuffer(nil)

	imports := make(map[string]interface{})
	for _, msg := range msgs {
		for _, s := range msg.TImport {
			imports[strings.ReplaceAll(s, ".", "_")] = nil
		}
	}

	for s := range imports {
		if s != name {
			fmt.Fprintf(sb, "include \"%s.thrift\"\n", s)
		}
	}

	fmt.Fprintf(sb, "\n\n")

	service := make(map[string]interface{})
	for _, msg := range msgs {
		if strings.HasSuffix(msg.Tstruct, "_args") {
			service[strings.ReplaceAll(msg.Tstruct, "_args", "")] = nil
		} else if strings.HasSuffix(msg.Tstruct, "_result") {
			service[strings.ReplaceAll(msg.Tstruct, "_result", "")] = nil
		} else {
			fmt.Fprintf(sb, "struct %s{\n", msg.Tstruct)
			for _, tfield := range msg.Tfields {
				req := strings.ToLower(TFieldRequirementType[tfield.Requirement])
				if req == "default" {
					req = ""
				} else {
					req = " " + req
				}
				if tfield.Note != "" {
					fmt.Fprintf(sb, "/*\n%s\n*/\n", tfield.Note)
				}
				fmt.Fprintf(sb, "    %3s:%s %s %s;\n", tfield.Index, req, tfield.Meta, tfield.Name)
			}
			fmt.Fprintf(sb, "}\n\n")
		}
	}

	fmt.Fprintf(sb, "service %s{\n", name)
	for method, _ := range service {

		args := bytes.NewBuffer(nil)
		success := "void"
		e := ""
		for _, msg := range msgs {
			if method+"_args" == msg.Tstruct {
				fmt.Fprintf(args, "(\n")
				for i, tfield := range msg.Tfields {
					req := strings.ToLower(TFieldRequirementType[tfield.Requirement])
					if req == "default" {
						req = ""
					} else {
						req = " " + req
					}
					if tfield.Note != "" {
						fmt.Fprintf(sb, "/*\n%s\n*/\n", tfield.Note)
					}
					fmt.Fprintf(args, "        %-2s:%s %s %s", tfield.Index, req, tfield.Meta, tfield.Name)
					if i < len(msg.Tfields)-1 {
						fmt.Fprintf(args, ",\n")
					} else {
						fmt.Fprintf(args, "\n")
					}
				}
				fmt.Fprintf(args, "    )")
			}

			if method+"_result" == msg.Tstruct {
				for _, tfield := range msg.Tfields {
					if tfield.Name == "success" {
						note := ""
						if tfield.Note != "" {
							note = fmt.Sprintf("/*\n%s\n*/\n", tfield.Note)
						}
						success = note + tfield.Meta
					}
					if tfield.Name == "e" {
						e = fmt.Sprintf("throws(%s: %s e)", tfield.Index, tfield.Meta)
					}
				}
			}
		}
		fmt.Fprintf(sb, "    %s %s%s%s;\n\n", success, method, args.String(), e)
	}
	fmt.Fprintf(sb, "}\n\n\n")

	os.MkdirAll("line", 0777)
	ioutil.WriteFile("./line/"+name+".thrift", sb.Bytes(), 0777)
}

//枚举
func parseEnum(name string) string {

	n := name

	name = regexp.MustCompile(`\.class$`).ReplaceAllString(name, "____java")
	name = strings.ReplaceAll(name, ".", "/")
	name = strings.ReplaceAll(name, "____java", ".java")

	buf, _ := ioutil.ReadFile("/backing/thrift/info/sources/" + name)
	str := string(buf)


	//enum := regexp.MustCompile(`enum ([\w\$]+) `).FindStringSubmatch(str)[1]

	buffer := bytes.NewBuffer(nil)
	fmt.Fprintf(buffer, "enum %s {\n", n)
	for _, s := range regexp.MustCompile(`    (\w+)\((\d+)\)`).FindAllStringSubmatch(str, -1) {
		fmt.Fprintf(buffer, "    %s = %s,\n", s[1], s[2])
	}

	fmt.Fprintf(buffer, "}")
	return buffer.String()
}

func parseStruct(name string) string {
	log.Println(name)
	name = regexp.MustCompile(`\.class$`).ReplaceAllString(name, "____java")
	name = strings.ReplaceAll(name, ".", "/")
	name = strings.ReplaceAll(name, "____java", ".java")

	buf, _ := ioutil.ReadFile("/backing/thrift/info/src2/" + name)
	str := string(buf)

	res := regexp.MustCompile(`TStruct\("(\w+)"\);`).FindStringSubmatch(str)[1]
	log.Println(res,res[1])
	return res
}
