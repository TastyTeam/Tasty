package com.tasty.entity;

import java.sql.Time;
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
import org.hibernate.annotations.GenericGenerator;

/**
 * 
 * @date 2018年11月29日 上午10:53:14 
 * @author 董莹
 * @return User
 */
@Entity
@Table(name="user")
public class User {
	private String phone;
	private String userName;
	private String password;
	private String registTime;
	private String userHeaderImg;
	private String address;
	private String sex;
	private Set <Comment>commentSet=new HashSet<Comment>(0);
	private Set <Community>communitySet=new HashSet<Community>(0);
	private Set <MyOrder>myorder=new HashSet<MyOrder>(0);
	@OneToMany(targetEntity=MyOrder.class,mappedBy="user")
	@Cascade(value={CascadeType.ALL})
	public Set<MyOrder> getOrder() {
		return myorder;
	}
	public void setOrder(Set<MyOrder> myorder) {
		this.myorder = myorder;
	}
	@OneToMany(targetEntity=Community.class,mappedBy="user")
	@Cascade(value= {CascadeType.ALL})
	public Set<Community> getCommunitySet() {
		return communitySet;
	}
	
	public void setCommunitySet(Set<Community> communitySet) {
		this.communitySet = communitySet;
	}
	@OneToMany(targetEntity=Comment.class,mappedBy="user")
	@Cascade(value= {CascadeType.ALL})

	public Set<Comment> getCommentSet() {
		return commentSet;
	}
	public void setCommentSet(Set<Comment> commentSet) {
		this.commentSet = commentSet;
	}
	
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getUserName() {
		return userName;
	}
	@Id
	@GeneratedValue(generator="mysi")
	@GenericGenerator(name="mysi", strategy="assigned")
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRegistTime() {
		return registTime;
	}
	public void setRegistTime(String registTime) {
		this.registTime = registTime;
	}
	public String getUserHeaderImg() {
		return userHeaderImg;
	}
	public void setUserHeaderImg(String userHeaderImg) {
		this.userHeaderImg = userHeaderImg;
	}
	
	
	

}
