package com.backstage.user.UserDaoImpl;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.backstage.entity.User;
import com.backstage.util.BaseDao;


/**
 * @date 2018年12月21日 下午1:11:27 
 * @author 王玉玲
 * @param 
*/
@Repository
public class UserDaoImpl extends BaseDao<User, String> {
			//查询user的所有的信息
	public List<User> getUserInformation(){
		List<User> listuser=null;
	   try {
		  
		   listuser=this.findAll();
		 
	} catch (Exception e) {
		System.out.println("search error");
	}
	   return listuser;
	}
//删除一个用户的操作
	public void duser(String dphone) {
		try {
			System.out.println("删除操作");
			this.delete(dphone);
			System.out.println("删除操作完成");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	//得到一个用户的信息
	public List<User> getOneUserInformation(String sphone) {
		List<User> listuser=null;
		String hql="from User u where u.phone=?";
		Object[] params= {sphone};
		   try {
			  
			   listuser=this.find(hql, params);
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		   return listuser;
		}
	}