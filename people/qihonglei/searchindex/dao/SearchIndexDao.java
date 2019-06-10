package com.tasty.searchindex.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Food;

@Repository
public class SearchIndexDao {
	@Resource
	private SessionFactory sessionFactory;
	public List<Food> findAll() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Food where foodId between 421012 and 421017");

		List<Food> list = query.list();
		return list;
	}
}
