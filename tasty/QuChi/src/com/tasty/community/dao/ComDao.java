package com.tasty.community.dao;

import java.sql.Time;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Community;



@Repository
public class ComDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public void insertcom(int id1, String content1) {
		Session session =this.sessionFactory.getCurrentSession();
		Community comm = new Community();
		comm.setCommunityid(id1);
		comm.setContent(content1);
		comm.setAddress("address");
		comm.setImg("1.jpg");
		comm.setTitle("success");
		comm.setTime("15:45");

		session.save(comm);
		
	}
	

}
