package com.tasty.ordercontent.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

/**
 * 
 * @date 2018年12月5日 下午3:15:30 
 * @author 董莹
 * @return OrderContentInsertDao
 * @param
 */
@Repository
public class OrderContentInsertDao {
	@Resource
	private SessionFactory sessionFactory;
	public void setmyorder(String phone,String orderuuid,String orderName,String orderAddress,String orderSex) {
		Session session =this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update MyOrder mo set mo.orderTel=?,mo.orderName=?,orderAddress=?,orderSex=? where mo.orderuuid=?");
		q.setString(0, phone);
		q.setString(1, orderName);
		q.setString(2, orderAddress);
		q.setString(3, orderSex);
		q.setString(4, orderuuid);
		q.executeUpdate();
		}
	public void setother(String addinformation,int tableware,String orderuuid) {
		Session session =this.sessionFactory.getCurrentSession();
		//Query q=session.createSQLQuery("insert into MyOrder(tableware,addInformation) values(?,?)where orderuuid=?");
		Query q=session.createQuery("update MyOrder mo set mo.tableware=?,mo.addInformation=? where mo.orderuuid= ?");
		q.setInteger(0, tableware);
		q.setString(1, addinformation);
		q.setString(2, orderuuid);
		q.executeUpdate();
		
	}
	public void setcount(int count,String orderuuid,int fastfoodId) {
		Session session =this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update OrderDetail od set od.fastfoodNumber=? where od.order.orderuuid=? and od.fastfoodId=?");
		q.setInteger(0, count);
		q.setString(1, orderuuid);
		q.setInteger(2, fastfoodId);
		q.executeUpdate();
	}
	public void setprice(int price, String orderuuid) {
		Session session =this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update MyOrder mo set mo.shoppingFee=? where mo.orderuuid=?");
		q.setInteger(0, price);
		q.setString(1, orderuuid);
		q.executeUpdate();		
	}
	public void delcount(String orderuuid,int fastfoodId) {
		Session session =this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("delete from OrderDetail od where fastfoodId=? and orderuuid=?");
		q.setInteger(0, fastfoodId);
		q.setString(1, orderuuid);
		q.executeUpdate();
	}

}
