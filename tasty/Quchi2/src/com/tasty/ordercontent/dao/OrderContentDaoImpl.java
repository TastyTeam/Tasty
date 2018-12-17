package com.tasty.ordercontent.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Cart;
import com.tasty.entity.FastFood;
import com.tasty.entity.MyOrder;
import com.tasty.entity.OrderDetail;
/**
 * 
 * @date 2018年12月4日 下午9:10:22 
 * @author 董莹
 * @return OrderContentDaoImpl
 * @param
 */
@Repository
public class OrderContentDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	/*public void getFastFood(int fastfoodId) {
		Session session =this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("FROM OrderDetail od where od.fastfood.fastfoodId=?");
		q.setInteger(0, fastfoodId);
		
	}*/
	public List<Cart> getFastFood(String orderuuid) {
//		HashMap<Integer,Cart> container=new HashMap<Integer,Cart>();
		Session session =this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("FROM OrderDetail od where od.order.orderuuid=?");
		q.setString(0, orderuuid);
		List<OrderDetail> fastfoodid=q.list();
		List<Cart> fastfood=new ArrayList<Cart>();
		int i=0;
		
		for(Object o:fastfoodid) {
			int ffi=((OrderDetail)o).getFastfoodId();
			int count=((OrderDetail)o).getFastfoodNumber();
			System.out.println("!!!"+ffi);
			Query q1=session.createQuery("From FastFood ff where ff.fastfoodId=?");
			q1.setInteger(0, ffi);
			FastFood f=(FastFood)q1.uniqueResult();
			Cart c=new Cart();
			c.setCount(count);
			c.setFastfood(f);
			fastfood.add(c);
		
		}
		
		return fastfood;
	}
	public List<OrderDetail> getorderdetail(String orderuuid) {
		Session session =this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("From OrderDetail od where od.order.orderuuid=?");
		q.setString(0, orderuuid);
		return q.list();
	}
	public MyOrder getmyorder(String orderuuid) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("From MyOrder mo where mo.orderuuid=?");
		q.setString(0, orderuuid);
		return (MyOrder)q.uniqueResult();
	}
	

}
