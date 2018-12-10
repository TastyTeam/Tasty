package com.tasty.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
/**
 * 
 * @date 2018年12月3日 上午11:00:59 
 * @author 董机智
 * @return Comment
 */
@Entity
@Table(name="comment")
public class Comment {
	private int commentId;
	private String commentDiscussion;
	private String commentTime;
	private int commentReviewed;
	private User user;
	private Community community;
	@ManyToOne(targetEntity=Community.class)
	@JoinColumn(name="communityid")
	public Community getCommunity() {
		return community;
	}
	public void setCommunity(Community community) {
		this.community = community;
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
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public String getCommentDiscussion() {
		return commentDiscussion;
	}
	public void setCommentDiscussion(String commentDiscussion) {
		this.commentDiscussion = commentDiscussion;
	}
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}
	
	public int getCommentReviewed() {
		return commentReviewed;
	}
	public void setCommentReviewed(int commentReviewed) {
		this.commentReviewed = commentReviewed;
	}
	
}
