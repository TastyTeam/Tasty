package com.tasty.articletype.control;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasty.articletype.service.ArticleTypeNameService;
import com.tasty.entity.Article;
import com.tasty.entity.ArticleType;



@Controller
public class ArticleTypeNameControl {

	@Resource
	private ArticleTypeNameService articleTypeNameService;
	
	@RequestMapping("/article")
	public String articleTypeName(HttpServletRequest request) {
		List<ArticleType> list=this.articleTypeNameService.list();
		request.getServletContext().setAttribute("articleTypeName", list);
/*		System.out.println("article type...");*/
		List<Article> list1=this.articleTypeNameService.list1();
    	request.getServletContext().setAttribute("article",list1);
		return "article";
	}
	
}
