package com.tasty.comment.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tasty.comment.dao.CommentDao;
import com.tasty.entity.Comment;


/**
 * @date 2018ƒÍ12‘¬17»’
 * @author ≤‹‘Û≥Ω
*/

@Service
public class CommentService {
	@Resource
	private CommentDao commentDao;
	public void addComment(Comment comment) {
		commentDao.addComment(comment);
	}
	
	public List<Comment> getComments(int communityid){
	   return	this.commentDao.findAll(communityid);
	}
}
