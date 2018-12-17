package com.tasty.privateorder.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Food;
import com.tasty.entity.FoodType;



@Repository
public class PrivateDao {
	
	@Resource
	private SessionFactory sessionfactory;
	
	public List<FoodType> findAll(){
		Session session=this.sessionfactory.getCurrentSession();
		Query q=session.createQuery("from FoodType a where a.parentId is null order by foodTypeId");
		return q.list();
	}
	
	public List<Food> findFood(String str5,String str6,String str7,String str8){
		Session session=this.sessionfactory.getCurrentSession();
		Query q=session.createQuery("from Food a where a.foodType like ?");
		q.setParameter(0,"%"+str5+"%"+str6+"%"+str7+"%"+str8+"%");
	
		return q.list();
	}
	

	
	
	public PrivateDao() {
		// TODO Auto-generated constructor stub
	}
 
}
