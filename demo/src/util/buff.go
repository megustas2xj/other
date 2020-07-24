package util

import "github.com/axgle/mahonia"

/**
 *
 * @project:
 * @Author: zzw
 * @Date: 2020/07/23 21:08
 * @Description:
 */

//解决GBK乱码
func ConvertToString(src string, srcCode string, tagCode string) string {

	srcCoder := mahonia.NewDecoder(srcCode)
	srcResult := srcCoder.ConvertString(src)
	tagCoder := mahonia.NewDecoder(tagCode)
	_, cdata, _ := tagCoder.Translate([]byte(srcResult), true)
	result := string(cdata)
	return result
}