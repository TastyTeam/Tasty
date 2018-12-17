package com.tasty.community.dao;

import java.sql.Time;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Community;

/**
 * @date 2018ƒÍ12‘¬17»’
 * @author ≤‹‘Û≥Ω
*/

@Repository
public class ComDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public void insertcom(Community community) {
		this.sessionFactory.getCurrentSession().save(community);
		
	}
	

}
