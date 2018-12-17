package com.tasty.articlecontent.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Article;

@Repository
public class ArticleContentDao {
	@Resource
	private SessionFactory sessionfactory;
	
	public Article findArticle(int articleId){
		Session session=this.sessionfactory.getCurrentSession();
		Query q=session.createQuery("from Article a where a.articleId=?");
		q.setParameter(0, articleId);
		Article article=(Article)q.uniqueResult();
		return article;
	}
}
