package com.tasty.articlecontent.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.tasty.articlecontent.service.ArticleContentService;
import com.tasty.entity.Article;

@Controller
public class ArticleContentControl {
	@Resource
	private ArticleContentService articlecontentservice;
	  int a;

	/*public String article(@RequestParam("id") String s,HttpServletRequest request) {
	     int articleId=Integer.parseInt(s);
	     Article article = articlecontentservice.findById(articleId);
	     request.setAttribute("article",article );
		 return "article_list_content";
	}*/
	
	@RequestMapping("/article_list_content")
	public String article(HttpServletRequest request,HttpServletResponse response) {
		String articleId=request.getParameter("articleId");
		int article_id=Integer.parseInt(articleId);
		Article article=this.articlecontentservice.findById(article_id);
		request.setAttribute("article", article);
		return "article_list_content";
	}
}
