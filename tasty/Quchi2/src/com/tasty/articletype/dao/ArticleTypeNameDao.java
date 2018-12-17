package com.tasty.articletype.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Article;
import com.tasty.entity.ArticleType;

@Repository
public class ArticleTypeNameDao {

	@Resource
	private SessionFactory sessionfactory;
	
	public List<ArticleType> findAll(){
		Session session=this.sessionfactory.getCurrentSession();
		Query q=session.createQuery("from ArticleType");
		return q.list();
		
	}
	
	public List<Article> findArticle(){
		Session session=this.sessionfactory.getCurrentSession();
		Query q=session.createQuery("from Article");

		return q.list();
	}
}
