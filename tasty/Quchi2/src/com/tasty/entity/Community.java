package com.tasty.entity;

import javax.persistence.Table;
import javax.xml.crypto.Data;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import java.sql.Time;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
/**
 * 
 * @date 2018骞�12鏈�3鏃� 涓婂崍11:00:51 
 * @author 钁ｆ満鏅�
 * @return Community
 */
@Entity
@Table(name = "Community")
public class Community {
	private int communityid;
	private String time;
	private String content;
	private String address;
	private String img;
	private String title;
	private int hot;
	private User user;
	private Set<Comment> setcomment=new HashSet<Comment>(0);
	@OneToMany(targetEntity=Comment.class,mappedBy="community")
	@Cascade(value= {CascadeType.ALL})
	public Set<Comment> getSetcomment() {
		return setcomment;
	}
	public void setSetcomment(Set<Comment> setcomment) {
		this.setcomment = setcomment;
	}
	@ManyToOne(targetEntity=User.class)
	@JoinColumn(name="phone")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getCommunityid() {
		return communityid;
	}
	public void setCommunityid(int communityid) {
		this.communityid = communityid;
	}
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getHot() {
		return hot;
	}
	public void setHot(int hot) {
		this.hot = hot;
	}
	
	
	

}
