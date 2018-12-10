package com.tasty.entity;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

/**
 * @date 2018/11/29 10:38 
 * @author 王玉玲
 * @return articleType
 */

@Entity
@Table(name=" articletype")
public class ArticleType {
	private int articleTypeId;
	private String articleTypeName;
	private Set<Article> article=new HashSet<Article>(0);
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getArticleTypeId() {
		return articleTypeId;
	}
	public void setArticleTypeId(int articleTypeId) {
		this.articleTypeId = articleTypeId;
	}
	@OneToMany(targetEntity=Article.class,mappedBy="articletype")
	@Cascade(value= {CascadeType.ALL})
	public Set<Article> getArticle() {
		return article;
	}
	public void setArticle(Set<Article> article) {
		this.article = article;
	}
	public String getArticleTypeName() {
		return articleTypeName;
	}
	public void setArticleTypeName(String articleTypeName) {
		this.articleTypeName = articleTypeName;
	}
}
