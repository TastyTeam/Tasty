package com.tasty.setNewPwd.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.User;

@Repository
public class SetNewPwdDao {
	@Resource
	private SessionFactory sessionFactory;
public void updateUser(User user) throws Exception{	
	
		this.sessionFactory.getCurrentSession().update(user);
	}
public List<User> findAll(String phone) {
	Session session = sessionFactory.getCurrentSession();
	Query query = session.createQuery("from User where phone=?");
	query.setParameter(0, phone);
	List<User> list = query.list();
	return list;

}
}
