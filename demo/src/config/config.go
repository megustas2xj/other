package config

import (
	"encoding/json"
	"log"
	"os"
	"path"
)

/**
 *
 * @project:
 * @Author: zzw
 * @Date: 2020/07/10 10:34
 * @Description:
 */

type MySqlConfigStruct struct {
	Database struct {
		Mysql struct {
			Host string `json:"host"`
			Port string `json:"port"`
			User string `json:"user"`
			Pwd string `json:"pwd"`
			Name string `json:"name"`
			Driver string `json:"driver"`
		} `json:"mysql"`
	} `json:"database"`
}

var dbConfig *MySqlConfigStruct

func DbConfig(dir string) *MySqlConfigStruct{

	file,err:=os.Open(path.Join(dir,"config.json"))
	log.Println(err)
	json.NewDecoder(file).Decode(&dbConfig)
	return dbConfig
}