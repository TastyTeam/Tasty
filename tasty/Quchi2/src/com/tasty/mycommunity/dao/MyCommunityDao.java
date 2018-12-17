package com.tasty.mycommunity.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Community;
import com.tasty.entity.User;

@Repository
public class MyCommunityDao {
	@Resource
	private SessionFactory sessionfactory;
	
	public User findAll(String phone) {
		Session session=this.sessionfactory.getCurrentSession();
		Query q=session.createQuery("from User a where a.phone=?");
		q.setParameter(0, phone);
		User user=(User)q.uniqueResult();
		return user;
	}
	
	public MyCommunityDao() {
		// TODO Auto-generated constructor stub
	}

}
