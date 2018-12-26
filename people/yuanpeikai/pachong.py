from bs4 import BeautifulSoup
import requests
import urllib.request
import pymysql  #导入 pymysql
#从421000开始421900-422200wancheng
id = 422600
value=[]
error_number=0
while(id < 422610):
    recipe_all=[]
    recipe_all.append(id)
    id+=1
    print(id-1)
    try:
        headers = {'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36'}
        url = requests.get('http://home.meishichina.com/recipe-'+str(id-1)+'.html', headers=headers)
        url.encoding='utf-8'
        print("当前爬取的网址为："+url.url)
        html_doc = url.text
        soup = BeautifulSoup(html_doc,"lxml")
        
        # 爬取 菜名 recipe_name
        recipe_name = soup.find(id="recipe_title").get("title")
        print(recipe_name)
        recipe_all.append(recipe_name)
        
        # 爬取 食材明细 
        recipe_material = []
        
        #获取材料
        recipe_material = soup.findAll("div", { "class" : "recipeCategory_sub_R clear" })
        #获取主料
        
        recipe_main=recipe_material[0].find_all('li')
        
        out_str=''
        for main in recipe_main:
            out_str=out_str+main.find('b').text+':'+main.find(class_='category_s2').text+';'
        recipe_all.append(out_str)
        
        #获取辅料
        recipe_other=recipe_material[1].find_all('li')
        
        out_str=''
        for other in recipe_other:
            out_str=out_str+other.find('b').text+':'+other.find(class_='category_s2').text+';'
        
        recipe_all.append(out_str)
        
        
        # 爬取其他
        recipe_judgement = soup.findAll("div", { "class" : "recipeCategory_sub_R mt30 clear" })
        recipe_qita=[]
        recipe_qita=recipe_judgement[0].find_all('li')
        
        out_str=''
        for recipe_fuliao in recipe_qita:
        	out_str=out_str+recipe_fuliao.find('a').text+':'+recipe_fuliao.find(class_='category_s2').text+';'
        
        recipe_all.append(out_str)
        
       
        
        
         # 爬取 做法步骤 文字 recipe_step_text
        out_str=''
        recipe_step_text = []
        recipe_step_text = soup.findAll("div", { "class" : "recipeStep_word" })
        for step_text in recipe_step_text:
        	out_str=out_str+step_text.text+';'
        
        recipe_all.append(out_str)
        
        
        #爬取所属类别
        out_str=''
        recipe_typeall=soup.find_all(class_='recipeTip mt16')[2].find_all('a')
        
        for recipe_type in recipe_typeall:
           out_str=out_str+recipe_type.text+';'
        
        recipe_all.append(out_str)
        
        
        #爬取小窍门
        
        recipe_tip = soup.find(class_='recipeTip')
        print(recipe_tip.text)
        
        recipe_all.append(recipe_tip.text)
        
        
        # 爬取 做法步骤 图片
        out_str=''
        recipe_step_img = soup.findAll("div", { "class" : "recipeStep_img" })
        img_number = 0
        for img in recipe_step_img:
            img_html=img.find("img").get('src')
            print(img_html)
            print(img_number)
            img_number = img_number + 1
            file = open('D:/images/meishichina/' + str(id-1) + '_' + str(img_number) + '.jpg',"wb")
            req = urllib.request.Request(url=img_html, headers=headers) 
            image = urllib.request.urlopen(req, timeout=20)
            pic = image.read()
            file.write(pic)
            out_str=out_str+'images/meishichina/' + str(id-1) + '_' + str(img_number) + '.jpg'+';'
            print("图片下载成功")
            file.close()
            
        recipe_all.append(out_str)
        
        
        
        # 爬取title图片
        img_html = soup.find("a", { "class" : "J_photo" }).find("img").get("src")			
        #print(img_html)
        file = open('D:/images/meishichina/' + str(id-1) + '.jpg',"wb")	
        image = urllib.request.urlopen(urllib.request.Request(url=img_html, headers=headers), timeout=10)
        pic = image.read()
        file.write(pic)
        print("图片下载成功")
        file.close()
        recipe_all.append('images/meishichina/' + str(id-1) + '.jpg')
        
        
        #数据整理
        value.append((recipe_all[0],recipe_all[1],recipe_all[2],recipe_all[3],recipe_all[4],recipe_all[5],recipe_all[6],recipe_all[7],recipe_all[8],recipe_all[9]))
    except Exception as e:
        print(e)
        error_number = error_number + 1
    else:
        continue
print(len(value))
print('错误页面数：'+str(error_number))




#打开数据库连接
db= pymysql.connect(host="localhost",user="root",
 	password="",db="py",port=3306)
 
# 使用cursor()方法获取操作游标
cur = db.cursor()


sql_insert ="insert into food values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"

try:
	cur.executemany(sql_insert,value)
	#提交
	db.commit()
except Exception as e:
	#错误回滚
	db.rollback()
finally:
    db.close()