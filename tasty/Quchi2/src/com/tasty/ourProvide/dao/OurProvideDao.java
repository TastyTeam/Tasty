package com.tasty.ourProvide.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.OurProvide;

@Repository
public class OurProvideDao {
	@Resource
	private SessionFactory sessionFactory;
	

	public List<OurProvide> findAll(){
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from OurProvide");
		return q.list();
	}
}
