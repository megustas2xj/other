package util

import (
	"log"
	"os"
)

/**
 *
 * @project:
 * @Author: zzw
 * @Date: 2020/07/18 19:51
 * @Description:
 */

func Write(filePath,str string) error{

	fl, err:= os.OpenFile(filePath, os.O_APPEND|os.O_CREATE, 0644)
	n,err:=fl.Write([]byte(str))
	if err == nil && n < len(str) {
		log.Println(err)
	}
	defer fl.Close()
	return err
}