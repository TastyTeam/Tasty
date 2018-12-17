package com.tasty.articletype.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.articletype.dao.ArticleTypeNameDao;
import com.tasty.entity.Article;
import com.tasty.entity.ArticleType;

@Service
@Transactional(readOnly=true)
public class ArticleTypeNameService {

	@Resource
	private ArticleTypeNameDao articleTypeNameDao;
	
	public List<ArticleType> list(){
		return this.articleTypeNameDao.findAll();
	}
	
	public List<Article> list1(){
		List<Article> list1 = this.articleTypeNameDao.findArticle();
		
		for(Article i:list1) {
			String y=i.getContent();
			String z=y.substring(0, 100);
			z+="...";
			i.setContent(z);
		}
		
		
		return list1;
	}
}
