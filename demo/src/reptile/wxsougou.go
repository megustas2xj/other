package main

import (
	"demo/src/util"
	"encoding/json"
	"fmt"
	"github.com/gin-gonic/gin"
	_ "github.com/gin-gonic/gin"
	tool "github.com/megustas2xj/reptiletool"
	"log"
	"regexp"
	"strings"
)

/**
 *
 * @project:
 * @Author: zzw
 * @Date: 2020/07/23 16:48
 * @Description:
 */

var header,rsgInfo map[string]string

func init(){
	header= map[string]string{
		"Host":"www.zuanke8.com",
		"Cache-Control":"max-age=0",
		"Upgrade-Insecure-Requests":"1",
		"User-Agent":"Mozilla/5.0(WindowsNT10.0;Win64;x64)AppleWebKit/537.36(KHTML,likeGecko)Chrome/83.0.4103.116Safari/537.36",
		"Accept":"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
		"Referer":"http://www.zuanke8.com/forum-19-1.html",
		"Accept-Language":"zh-CN,zh;q=0.9",
		"Connection":"keep-alive",
		"Cookie":"ki1e_2132_saltkey=up3pBPPo; ki1e_2132_lastvisit=1593928152; ki1e_2132_atarget=1; _uab_collina=159393175583340124479456; __gads=ID=7c08080fed5bc7d8:T=1593931756:S=ALNI_MaD03D4bWwVB-6FsXjCIAmbun6iKg; ki1e_2132_connect_is_bind=0; ki1e_2132_nofavfid=1; ki1e_2132_pc_size_c=0; BAIDU_SSP_lcr=https://www.baidu.com/s?wd=%E8%B5%9A%E5%90%A7&rsv_spt=1&rsv_iqid=0xefd7f67f0002abe6&issp=1&f=8&rsv_bp=1&rsv_idx=2&ie=utf-8&rqlang=cn&tn=baiduhome_pg&rsv_enter=1&rsv_dl=tb&oq=%25E5%25BE%25AE%25E4%25BF%25A1%25E6%2590%259C%25E7%258B%2597&rsv_btype=t&inputT=2900&rsv_t=8ed9MEGTFyQv1c5pBce9vcMi0y755OXVPqLM15gef%2F0%2Ff2jnvC2d0AnHDzHRcq4bnza1&rsv_pq=85e888b7001095d9&rsv_sug2=0&rsv_sug4=3059; Hm_lvt_da6569f688ba2c32429af00afd9eb8a1=1593931756,1593931775,1594013379,1595494278; ki1e_2132_auth=9550ntaeYhLR%2F%2F%2FdC4%2BKqLmR46ZkO3Q5O%2FiUJ%2Fh0dcYqNMjmHdW54RTUKe475D6FIPvCgQZ5YrYDTho6vreX128JaEXZ; ki1e_2132_lastcheckfeed=1061965%7C1595494319; ki1e_2132_lip=175.11.88.19%2C1595494319; ki1e_2132_ulastactivity=1595556053%7C0; ki1e_2132_sendmail=1; ki1e_2132_home_diymode=1; ki1e_2132_viewid=tid_10128; ki1e_2132_smile=1D1; ki1e_2132_forum_lastvisit=D_27_1595556113D_19_1595556146; Hm_lpvt_da6569f688ba2c32429af00afd9eb8a1=1595556148; amvid=3d98086d915f20150ee088354bc70bbb; ki1e_2132_lastact=1595556147%09connect.php%09check",
	}
}

func main() {

	mapss:=make([]map[string]string,0)
	for i:=0;i<=10;i++{
		mapss=append(mapss,handle(i))
	}
	buf,_:=json.Marshal(mapss)
	router:=gin.Default()
	router.GET("/reptile", func(context *gin.Context) {
		context.JSON(200,gin.H{
			"code":200,
			"success":true,
			"obj":string(buf),
		})
	})
	router.Run("localhost:8081")
}

func handle(page int) map[string]string{

	url:=fmt.Sprintf("http://www.zuanke8.com/forum-19-%d.html",page)
	if buf,code,err:=tool.StartRequestNoProxy("GET",url,header,nil);err!=nil{
		log.Println(code,err)
	}else {
		str:=util.ConvertToString(string(buf),"gbk","utf-8")
		result:=regexp.MustCompile(`<a href="http://.*"\s.*class="s xst" target="_blank">.*`).FindAllString(str,-1)
		for _,v:=range result{
			if strings.Index(v,"</a>]</em>")>-1{
				rsgInfo= map[string]string{
					"Name":ParseName(v),
					"Url":ParseUrl(v),
					"Title":ParseTitle(v),
				}
			}
		}
	}
	return rsgInfo
}

func ParseName(str string) string{

	str=regexp.MustCompile("\">[\u4e00-\u9fa5].*\\</em>").FindString(str)
	str=strings.ReplaceAll(str,"</a>]</em>","")
	str=strings.ReplaceAll(str,"\">","")
	return str
}

func ParseUrl(str string) string{

	str=regexp.MustCompile("</em> <a href=\"http://.*\\.html\" ").FindString(str)
	str=regexp.MustCompile(`[a-zA-z]+://[^\s]*`).FindString(str)
	return strings.ReplaceAll(str,"\"","")

}

func ParseTitle(str string) string{

	str=regexp.MustCompile(`target="_blank">.*\</a>`).FindString(str)
	str=strings.ReplaceAll(str,`target="_blank">`,"")
	str=strings.ReplaceAll(str,`</a>`,"")
	return str

}


