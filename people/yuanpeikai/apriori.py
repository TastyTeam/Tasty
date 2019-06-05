#-*- coding: utf-8 -*-
from __future__ import print_function
import numpy
import pandas as pd
import sys

#自定义连接函数，用于实现L_{k-1}到C_k的连接
def connect_string(x, ms):
  x = list(map(lambda i:sorted(i.split(ms)), x))
  l = len(x[0])
  r = []
  for i in range(len(x)):
    for j in range(i,len(x)):
      if x[i][:l-1] == x[j][:l-1] and x[i][l-1] != x[j][l-1]:
        r.append(x[i][:l-1]+sorted([x[j][l-1],x[i][l-1]]))
  # print("r",r)
  return r

#寻找关联规则的函数
def find_rule(d, support, confidence, ms = u'--',foodid=u'421000'):
  result = pd.DataFrame(index=['support', 'confidence']) #定义输出结果
  support_series = 1.0*d.sum()/len(d) #支持度序列
  column = list(support_series[support_series > support].index) #初步根据支持度筛选
  k = 0
  '''
  foodid=foodid.split('\'')[1]
  print(foodid)
  '''
  
  num=0
  col_list=[]
  while len(column) > 1:
    k = k+1
    # print(u'\n正在进行第%s次搜索...' %k)
    column = connect_string(column, ms)
    # print(u'数目：%s...' %len(column))
    sf = lambda i: d[i].prod(axis=1, numeric_only = True) #新一批支持度的计算函数
    
    #创建连接数据，这一步耗时、耗内存最严重。当数据集较大时，可以考虑并行运算优化。
    d_2 = pd.DataFrame(list(map(sf,column)), index = [ms.join(i) for i in column]).T
    
    support_series_2 = 1.0*d_2[[ms.join(i) for i in column]].sum()/len(d) #计算连接后的支持度
    column = list(support_series_2[support_series_2 > support].index) #新一轮支持度筛选

    if num == 0:
      # print("column", column)
      for col in column:
        col_split=col.split(ms)
        # print("fenge",col_split)
        if col_split[0]==foodid:
          col_list.append(col_split[1])
        elif col_split[1]==foodid:
          col_list.append(col_split[0])

      # print(col_list)

    num += 1
    support_series = support_series.append(support_series_2)
    column2 = []
    
    for i in column: #遍历可能的推理，如{A,B,C}究竟是A+B-->C还是B+C-->A还是C+A-->B？
      i=str(i)
      i = i.split(ms)
      for j in range(len(i)):
        column2.append(i[:j]+i[j+1:]+i[j:j+1])
    
    cofidence_series = pd.Series(index=[ms.join(i) for i in column2]) #定义置信度序列
 
    for i in column2: #计算置信度序列
      cofidence_series[ms.join(i)] = support_series[ms.join(sorted(i))]/support_series[ms.join(i[:len(i)-1])]
    
    for i in cofidence_series[cofidence_series > confidence].index: #置信度筛选
      result[i] = 0.0
      result[i]['confidence'] = cofidence_series[i]
      result[i]['support'] = support_series[ms.join(sorted(i.split(ms)))]
  result = result.T.sort_values(['confidence','support'], ascending = False) #结果整理，输出
  # print(u'\n结果为：')
  # print(result)
  
  return col_list

if __name__ == '__main__':
  # -*- coding: utf-8 -*-
  # 使用Apriori算法挖掘菜品订单关联规则

  inputfile = 'E:\\menu_ordersn.xls'
  data = pd.read_excel(inputfile, header=None, dtype=str)

  # print(u'\n转换原始数据至0-1矩阵...')
  ct = lambda x: pd.Series(1, index=x[x != 'nan'])  # 转换0-1矩阵的过渡函数
  # print("ct",ct)
  b = map(ct, data.as_matrix())  # 用map方式执行
  # print("b",list(b))
  # print("dataframe",pd.DataFrame(list(b)))
  data = pd.DataFrame(list(b)).fillna(0)  # 实现矩阵转换，空值用0填充
  # print(data)
  # print(u'\n转换完毕。')
  del b  # 删除中间变量b，节省内存

  # data=str(data)

  support = 0.2  # 最小支持度
  confidence = 0.5  # 最小置信度
  ms = '---'  # 连接符，默认'--'，用来区分不同元素，如A--B。需要保证原始表格中不含有该字符

  # find_rule(data, support, confidence, ms,'421003').to_excel(outputfile) #保存结果
  resultList=find_rule(data, support, confidence, ms, sys.argv[1])
  #resultList=find_rule(data, support, confidence, ms, '421003')
  for i in range(len(resultList)):
    print(resultList[i])