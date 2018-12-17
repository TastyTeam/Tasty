package com.tasty.articlecontent.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.articlecontent.dao.ArticleContentDao;
import com.tasty.entity.Article;

@Service
@Transactional(readOnly=true)
public class ArticleContentService {
	
	@Resource
	private ArticleContentDao articlecontentdao;
	
	public Article findById(int articleId){
		return this.articlecontentdao.findArticle(articleId);
	}
}
