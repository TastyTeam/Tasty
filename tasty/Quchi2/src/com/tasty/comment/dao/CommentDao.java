package com.tasty.comment.dao;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Comment;
import com.tasty.entity.User;


/**
 * @date 2018ƒÍ12‘¬17»’
 * @author ≤‹‘Û≥Ω
*/



@Repository
public class CommentDao {
	@Resource
	private SessionFactory sessionFactory;
	public void addComment(Comment comment) {
		this.sessionFactory.getCurrentSession().save(comment);
	}
	
	public List<Comment> findAll(int communityid) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Comment where community.communityid=?");
		query.setParameter(0, communityid);
		List<Comment> list = query.list();
		return list;

	}
}
