package com.tasty.entity;
import java.sql.Time;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
/**
 * @date 2018/11/29 10:38 
 * @author 王玉玲
 * @return article
 */
@Entity
@Table(name="article")
public class Article {
	  private int  articleId;
	  private String articleName;
	  private String  publicTime;
	  private String  content;
	  private ArticleType articletype;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	@ManyToOne(targetEntity=ArticleType.class)
	@JoinColumn(name="typeId")
	public ArticleType getArticletype() {
		return articletype;
	}
	public void setArticletype(ArticleType articletype) {
		this.articletype = articletype;
	}
	public String getArticleName() {
		return articleName;
	}
	public void setArticleName(String articleName) {
		this.articleName = articleName;
	}
	
	public String getPublicTime() {
		return publicTime;
	}
	public void setPublicTime(String publicTime) {
		this.publicTime = publicTime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

}
