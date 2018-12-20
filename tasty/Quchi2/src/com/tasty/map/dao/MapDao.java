package com.tasty.map.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Article;
import com.tasty.entity.Restaurant;

/**
 * @author 袁培凯
 * @param 查询商家
 * */
@Repository
public class MapDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public List<Restaurant> findAll() {
		Session session=this.sessionFactory.getCurrentSession();
		return session.createQuery("from Restaurant").list();
	}

}
