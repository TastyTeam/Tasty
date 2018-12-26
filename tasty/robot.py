# -*- coding: utf-8 -*-
import jieba
import datetime
import pymysql  #导入 pymysql
import requests#导入request模块
import json
import urllib.request
import sys

class Kinds:
    food_step=[]
    foodmain=''
    title=''
    foodid=''
    your_input=''

def db():
     #打开数据库连接
    db= pymysql.connect(host="localhost",user="root",password="",db="tasty",port=3306)
    # 使用cursor()方法获取操作游标
    cur = db.cursor()
    sql = "select * from robot where title = '%s'"% tmp[0]
    results=[]
    try:
        cur.execute(sql) 	#执行sql语句
        results = cur.fetchall()	#获取查询的所有记录
    except Exception as e:
        raise e
    finally:
        db.close()	#关闭连接
    foodstep=''
    for row in results:
        kind.foodid=row[0]
        kind.title = row[1]
        foodstep=row[2]
    kind.food_step=foodstep.split(';')
def my(kind):
    db()
    print(kind.title+'做法步骤如下：')
    for item in range(0,len(kind.food_step)):
        print(str(item+1)+"."+str(kind.food_step[item]))
        
def date(your_list):
    if '今天' in your_list or '今日' in your_list:
        print(datetime.date.today())
    elif '明天' in your_list or '明日' in your_list:
        print(datetime.date.today() + datetime.timedelta(days=1))
    elif '昨天' in your_list or '昨日' in your_list:
        print(datetime.date.today() - datetime.timedelta(days=1))
    else:
        print("对不起我暂时不能明白您的意思")

def time(your_list):
    time1_str = datetime.datetime.strftime(datetime.datetime.now(),'%H:%M:%S')
    print("当前时间为"+time1_str)

def get_week_day(your_list):
    week_day_dict = {
        0 : '星期一',
        1 : '星期二',
        2 : '星期三',
        3 : '星期四',
        4 : '星期五',
        5 : '星期六',
        6 : '星期日',
    }
    day = datetime.datetime.now().weekday()
    if '今天' in your_list or '今日' in your_list:
        print(week_day_dict[day])
    elif '明天' in your_list or '明日' in your_list:
        print(week_day_dict[day+1])
    elif '昨天' in your_list or '昨日' in your_list:
        print(week_day_dict[day-1])
    else:
        print("对不起我暂时不能明白您的意思")

def week(i):
    week_day_dict = {
        0 : '星期一',
        1 : '星期二',
        2 : '星期三',
        3 : '星期四',
        4 : '星期五',
        5 : '星期六',
        6 : '星期日',
        }
    day = datetime.datetime.now().weekday()
    day=(day+i)%7
    return week_day_dict[day]

def day(results,i):
    time1_str = datetime.datetime.strftime(datetime.date.today()+ datetime.timedelta(days=i),'day_%Y%m%d')
    print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+results['result']['future'][time1_str]['temperature'])
    print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+results['result']['future'][time1_str]['weather'])
    print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+results['result']['future'][time1_str]['wind'])


def weather_day(your_list):
    url = 'http://v.juhe.cn/weather/index'
    params1 = {"cityname":"石家庄","dtype":"","format":"","key":"efd5194d2e50d31a3bbbb7cb387dd87c"}
    response = requests.get(url=url,params=params1)#用导入的request模块的get方法访问URL,并在后面加上参数
    results=response.json()
    if results['resultcode']=='200':
        if '今天' in your_list or '今日' in your_list:
            print("今天天气情况如下：")
            print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+"温度范围"+results['result']['today']['temperature'])
            print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+results['result']['today']['weather'])
            print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+results['result']['today']['wind'])
            print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+results['result']['today']['dressing_advice'])
        else:
            print("近七天天气情况如下：")
            print("今天")
            day(results,0)
            print("明天")
            day(results,1)
            print("后天")
            day(results,2)
            print(week(3))
            day(results,3)
            print(week(4))
            day(results,4)
            print(week(5))
            day(results,5)
            print(week(6))
            day(results,6)
    else:
        print("查询失败")
# 开始对话




all=['红烧牛肉','宫保鸡丁','麻婆豆腐','糖醋排骨','可乐鸡翅','红烧肉']
jieba.load_userdict('E:/caipu.txt')
kind=Kinds();

kind.your_input=str(sys.argv[1])
your_list = jieba.lcut(kind.your_input, cut_all=True)
tmp = [val for val in your_list if val in all]
if len(tmp)==1:
    my(kind)
elif '星期' in your_list:
    get_week_day(your_list)
elif '天气' in your_list:
    weather_day(your_list)
elif '几号' in your_list or '日期' in your_list:
    date(your_list)
elif '推荐' in your_list:
    print('为您推荐菜品如下：')
elif '几点' in your_list or '时间' in your_list:
    time(your_list)
else:
    api_url = "http://openapi.tuling123.com/openapi/api/v2"
    req = {
        "perception":
        {
            "inputText":
            {
                "text": kind.your_input
            }
        },
        "userInfo": 
        {
            "apiKey": "02e89a63835b4025912bd36ce120b154",
            "userId": "OnlyUseAlphabet"
        }
    }
    req = json.dumps(req).encode('utf8')
    http_post = urllib.request.Request(api_url, data=req, headers={'content-type': 'application/json'})
    response = urllib.request.urlopen(http_post)
    response_str = response.read().decode('utf8')
    response_dic = json.loads(response_str)
    intent_code = response_dic['intent']['code']
    results_text = response_dic['results'][0]['values']['text']
    print(results_text)