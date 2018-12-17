package com.tasty.regist.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.User;
@Repository
public class RegistDao {
	@Resource
private SessionFactory sessionFactory;
public void addUser(User user) throws Exception{	
	
		this.sessionFactory.getCurrentSession().save(user);
	}

public List<User> findAll(){
	 Session session=this.sessionFactory.getCurrentSession();
	 Query q=session.createQuery("from User");
	return q.list();
}
}
