package com.tasty.myorder.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.MyOrder;

/**
 * 
 * @date 2018年12月4日 下午2:28:50 
 * @author 董机智
 * @return OrderDao
 * @param 获取订单数据
 */
@Repository
public class OrderDao {

	@Resource
	private SessionFactory sessionFactory;
	public List<MyOrder> getOrder(String phone) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("FROM MyOrder o where o.user.phone=?");
		q.setString(0, phone);
		return q.list();
		
	}

}
