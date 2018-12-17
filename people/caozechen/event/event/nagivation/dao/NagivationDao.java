package com.tasty.nagivation.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Navigation;
import com.tasty.entity.User;

@Repository
public class NagivationDao {
	@Resource
	private SessionFactory sessionFactory;
	public List<Navigation> findAll(){
		 Session session=this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("from Navigation");
		return q.list();
	}
}
