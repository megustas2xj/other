package main

import (
	"demo/src/models"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"io/ioutil"
	"log"
	"net/http"
	"regexp"
	"strings"
)

/**
 *
 * @project:
 * @Author: zzw
 * @Date: 2020/07/22 21:27
 * @Description:
 */

var Github map[string]string

func init(){
	models.InitDb()
}

func ReptileGithub(name string) (result []byte,err error){

	if resp,err:=http.Get(fmt.Sprintf("https://github.com/%s",name)); err!=nil{
		log.Println(err)
	}else {
		defer resp.Body.Close()
		result,err=ioutil.ReadAll(resp.Body)
	}
	return
}

func Handle(Name string) {

	result,_:=ReptileGithub(Name)
	resInfo:=regexp.MustCompile(`alt=".*" src="https://.*"`).FindString(string(result))
	resDec:=regexp.MustCompile(`class="text-bold text-gray-dark".*\</span>`).FindAllString(string(result),-1)
	decInfo:=make([]string,0)
	for _,v:=range resDec{
		decInfo= append(decInfo, regexp.MustCompile(`(\d+)`).FindString(v))
	}
	Avatar:=ParseAvatar(regexp.MustCompile(`(".*")`).FindStringSubmatch(resInfo)[1])
	Github= map[string]string{
		"AvatarUser": Avatar,
		"FullName":ParseFullName(regexp.MustCompile(`("name">.*\<)`).FindString(string(result))),
		"UserName": Name,
		"Followers": decInfo[0],
		"Following": decInfo[1],
		"Start": decInfo[2],
	}
	models.AddUserInfo(Github)
}

func ParseAvatar(str string) (Avatar string){

	Avatar=strings.ReplaceAll(regexp.MustCompile(`[a-zA-z]+://[^\s]*`).FindString(str),"\"","")
	return Avatar
}

func ParseFullName(str string) string{

	left:=strings.Index(str,">")
	right:=strings.Index(str,"<")
	FullName:=str[left+1:right]
	return FullName
}

