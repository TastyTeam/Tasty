import math
import sys

import math
import sys
#读取数据 构建dic[每个人][评价过的菜]=分数
def read_data(udata):
    user_food={}
    line_num=0
    for line in open(udata):
        line_num+=1
        if(line_num!=1):
            user_id,food_id,score = line.split(",")[0:3]
            user_food.setdefault(user_id,{})
            user_food[user_id][food_id] = float(score)
    return user_food

import numpy as np
#依据dict[每个人][评价过的菜] = 分数 构建物品相似度矩阵
def item_similarity(user_food,k=0):
    user_food = user_food
    #print(user_food)
    C={}#存放最终的物品相似度矩阵
    N={}#存放每个食品的评分人数
    for user,item in user_food.items():
        #print (user,"************************************")
        #print (item,"///////////////////")
        #print(user)
        for i in item.keys():
            N.setdefault(i,0)
            #print(N)
            N[i]+=1
           # print(N,'nnnnnnnnnn')
            C.setdefault(i,{})
            #print(C)
            for j in item.keys():
                if i == j :
                    continue
                C[i].setdefault(j,0)
                C[i][j]+=1
    W = {}
    #存放最终的物品余弦相似度矩阵
    for i,related_items in C.items():
        W.setdefault(i,{})
        for j,cij in related_items.items():
            W[i][j] = cij/(math.sqrt(N[i] * N[j]))
    return W


#计算推荐结果 K代表取每一个
def Recommend(user,user_food,W,K,N):
    rank = {} #存放推荐计算结果
    # action_item = user_food[user] #存放用户看过的食物,及打分
    action_item = user_food[user]
    for item,score in action_item.items():
        for j,wj in sorted(W[item].items(),key = lambda x:x[1],reverse=True)[0:5]:
        #j代表用户每一个食物的食物推荐，依据打分的倒排推荐 wj为分数
            if j in action_item: #过滤掉推荐中看过的
                continue
            rank.setdefault(j,0)
            rank[j] += float(score*wj) #每一个食品推荐的分数是  用户打分*矩阵相似分数
    return dict(sorted(rank.items(),key = lambda x:x[1],reverse=True)[0:N])

if __name__ == "__main__":#主函数
    #加载数据
    user_food =read_data("D:\\大三下\\project\\tasty1\\type.csv")
    #计算电影相似度
    W=item_similarity(user_food)
    #print (W)
    #计算推荐结果
    result = Recommend(sys.argv[1],user_food,W,9,9)
    for i,rating in result.items():
         print (i)



