package com.tasty.search.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Food;

@Repository
public class SearchDao {
	@Resource
	private SessionFactory sessionFactory;
	public List<Food> findAll(String foodName) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Food where foodName like ?");
		query.setParameter(0, "%"+foodName+"%");
		List<Food> list = query.list();
		return list;
	}
}
