# 基于用户的协同过滤推荐算法实现
import math
from operator import itemgetter
import sys


class UserBasedCF():
    # 初始化相关参数
    def __init__(self):
        # 找到与目标用户兴趣相似的20个用户，为其推荐9篇文章
        self.n_sim_user = 20
        self.n_rec_article = 9


        self.trainSet = {}

        
        # 用户相似度矩阵
        self.user_sim_matrix = {}


    # 读文件得到“用户-文章”数据
    def get_dataset(self, filename):
        trainSet_len = 0
        for line in self.load_file(filename):
            user, article, rating = line.split(',')
            self.trainSet.setdefault(user, {})
            self.trainSet[user][article] = rating
            trainSet_len += 1



    # 读文件，返回文件的每一行
    def load_file(self, filename):
        with open(filename, 'r') as f:
            for i, line in enumerate(f):
                if i == 0:  # 去掉文件第一行的title
                    continue
                yield line.strip('\r\n')



    # 计算用户之间的相似度
    def calc_user_sim(self):
        # 构建“文章-用户”倒排索引
        article_user = {}
        for user, articles in self.trainSet.items():
            for article in articles:
                if article not in article_user:
                    article_user[article] = set()
                article_user[article].add(user)


        for article, users in article_user.items():
            for u in users:
                for v in users:
                    if u == v:
                        continue
                    self.user_sim_matrix.setdefault(u, {})
                    self.user_sim_matrix[u].setdefault(v, 0)
                    self.user_sim_matrix[u][v] += 1


        # 计算相似性
        for u, related_users in self.user_sim_matrix.items():
            for v, count in related_users.items():
                self.user_sim_matrix[u][v] = count / math.sqrt(len(self.trainSet[u]) * len(self.trainSet[v]))

    # 针对目标用户U，找到其最相似的K个用户，产生N个推荐
    def recommend(self, user):
        K = self.n_sim_user
        N = self.n_rec_article
        rank = {}
        watched_movies = self.trainSet[user]
        for v, wuv in sorted(self.user_sim_matrix[user].items(), key=itemgetter(1), reverse=True)[0:K]:
            for article in self.trainSet[v]:
                if article in watched_movies:
                    continue
                rank.setdefault(article, 0)
                rank[article] += wuv
        return sorted(rank.items(), key=itemgetter(1), reverse=True)[0:N]


    def evaluate(self,user):
        rec_articles = self.recommend(user)
        for i in range (len(rec_articles)):
            print(rec_articles[i][0])
            
if __name__ == '__main__':
    rating_file = 'E:/type.csv'
    userCF = UserBasedCF()
    userCF.get_dataset(rating_file)
    userCF.calc_user_sim()
    userCF.evaluate(sys.argv[1])
    #userCF.evaluate('13946680120')