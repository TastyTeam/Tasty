package com.tasty.mapdishes.dao;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.OrderDetail;
import com.tasty.entity.User;

/**
 * 
 * @date 2018年12月7日 下午5:03:58 
 * @author 董莹
 * @return AddCartDaoImpl
 * @param
 */
@Repository
public class AddCartDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public void setOrderDetail(String orderuuid,int fastfoodNumber,int fastfoodId,int orderDetailId) {

		Session session=this.sessionFactory.getCurrentSession();
		//Query q=session.createQuery("update OrderDetail od set fastfoodId=?,fastfoodNumber=?,orderuuid=? where od.orderDetailId=?");
		Query q=session.createSQLQuery("insert into OrderDetail(orderuuid,fastfoodNumber,fastfoodId,orderDetailId) values(?,?,?,?)");
		q.setString(0, orderuuid);
		q.setInteger(1, fastfoodNumber);
		q.setInteger(2, fastfoodId);
		q.setInteger(3, orderDetailId);
		
		q.executeUpdate();
		
	}
	public void setshopIdTOMyOrder(String orderuuid,int shopId,String phone) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createSQLQuery("insert into MyOrder(shopId,orderuuid) values(?,?)");
		q.setInteger(0, shopId);
		q.setString(1, orderuuid);
		q.executeUpdate();
		Query q1=session.createQuery("from User u where u.phone=?");
		q1.setString(0, phone);
		User u=(User)q1.uniqueResult();
		Query q2=session.createSQLQuery("update MyOrder set orderName=?,orderSex=?,orderTel=?,phone=?,orderState=?,orderAddress=? where orderuuid=?");
		q2.setString(0, u.getUserName());
		q2.setString(1, u.getSex());
		q2.setString(2, u.getPhone());
		q2.setString(3, u.getPhone());
		q2.setString(4, "未支付");
		q2.setString(5, u.getAddress());
		q2.setString(6, orderuuid);
		q2.executeUpdate();
		Query q3=session.createSQLQuery("update MyOrder set tableware=?,addInformation=?,shoppingFee=?,orderTime=? where orderuuid=?");
		q3.setInteger(0, 0);
		q3.setString(1, "无");
		q3.setInteger(2, 0);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		q3.setString(3,df.format(new Date()));
		q3.setString(4, orderuuid);
		q3.executeUpdate();
	}
	public void setMyOrderShopId(String orderuuid, int shopId) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createSQLQuery("update MyOrder set shopId=? where orderuuid=?");
		q.setInteger(0, shopId);
		q.setString(1, orderuuid);
		q.executeUpdate();
	}
	public boolean getfoodexit(String od, int fastfoodid) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createSQLQuery("select orderDetailId from OrderDetail od where od.orderuuid=? and od.fastfoodId=?");
		q.setString(0, od);
		q.setInteger(1, fastfoodid);
		if(q.uniqueResult()!=null&&!q.uniqueResult().equals("")) {
			return true;
		}else {
		return false;
		}
	}
	
	
}
