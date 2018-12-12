package com.tasty.self.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.User;
/**
 * 
 * @date 2018年12月11日 下午3:09:09 
 * @author 董莹
 * @return SelfDaoImpl
 * @param
 */
@Repository
public class SelfDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public User getuser(String phone) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("From User u where u.phone=?");
		q.setString(0, phone);
		return (User)q.uniqueResult();
	}
	public void setUserName(String name,String phone) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update User u set u.userName=? where u.phone=?");
		q.setString(0, name);
		q.setString(1, phone);
		q.executeUpdate();
	}
	public void setUserPassword(String password,String phone) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update User u set u.password=? where u.phone=?");
		q.setString(0, password);
		q.setString(1, phone);
		q.executeUpdate();
	}
	public void setUserSex(String sex,String phone) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update User u set u.sex=? where phone=? ");
		q.setString(0, sex);
		q.setString(1, phone);
		q.executeUpdate();
	} 
	public void setUserAddress(String address,String phone) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update User u set u.address=? where phone=? ");
		q.setString(0, address);
		q.setString(1, phone);
		q.executeUpdate();
	}

}
