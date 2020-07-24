package models

import (
	"demo/src/config"
	"demo/src/util"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"github.com/jinzhu/gorm"
	"io/ioutil"
	"log"
	"os"
	"regexp"
	"strings"
)

/**
 *
 * @project:
 * @Author: zzw
 * @Date: 2020/07/10 13:32
 * @Description:
 */

var orm *gorm.DB

func InitDb(){

	var err error
	configPath:="D:/AllIASK/GO/demo/src/config/"
	values:=config.DbConfig(configPath).Database.Mysql
	dns := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=%s",values.User,values.Pwd,values.Host,values.Port,values.Name,"utf8")
	orm,err=gorm.Open("mysql",dns)
	orm.SingularTable(true)
	log.Println(err)
}

func AddProxy(info string){

	strs:=strings.Split(info,",")
	sql:="insert  into proxy(sys_p_id,proxy_host,proxy_port,proxy_user,proxy_password) values(replace(uuid(), '-', ''),?,?,?,?)"
	orm.Exec(sql,strs[0],strs[1],strs[2],strs[3])

}

func addTxt(){

	file,err:=os.Open("src/upload/abc.txt")

	content,err:=ioutil.ReadAll(file)

	util.PrintErr(err)

	for _,info:=range regexp.MustCompile(`[\s\r\n]+`).Split(string(content),-1){
		AddProxy(info)
	}
	defer file.Close()
}

func AddUserInfo (userInfo map[string]string){
	log.Println(userInfo)
	sql:="insert into github(id) values(?)"
	err:=orm.Exec(sql,util.CallUUID())
	log.Println(err)
	for k,v:=range userInfo{
		err:=orm.Exec(fmt.Sprintf("UPDATE github set %s=(?)",strings.ToLower(k)),v)
		log.Println(err)
	}
}




