package com.backstage.register.dao;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.backstage.entity.Manager;

/**
 * @date 2018年12月13日 上午10:37:18 
 * @author 王玉玲
 * @param 
*/
@Repository
public class RegisterDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	/**
	 * @date 2018年12月13日 上午10:37:18 
	 * @author 王玉玲
	 * @param email
	 * @desc 当前邮箱是否已经注册过
	*/
	public Boolean registerBefore(String email) {
		Session session =this.sessionfactory.getCurrentSession();
		Query query=session.createQuery("from Manager m where m.managerEmail=?");
		query.setString(0,email);
		Manager count =  (Manager)query.uniqueResult();
		if(count==null) {
			return false;
		}else {
			return true;
		}
	}
	/**
	 * @date 2018年12月13日 上午10:37:18 
	 * @author 王玉玲
	 * @param email
	 * @desc 插入数据
	*/
	public void register(String name,String password,String email) {
		Session session =this.sessionfactory.getCurrentSession();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		Manager manager=new Manager();
		manager.setManagerEmail(email);
		manager.setManagerName(name);
		manager.setManagerPassword(password);
		manager.setManagerRegisterTime(df.format(new Date()));
		session.save(manager);
	}
}
