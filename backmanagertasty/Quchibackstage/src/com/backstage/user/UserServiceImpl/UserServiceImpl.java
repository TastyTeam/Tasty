package com.backstage.user.UserServiceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.annotations.Source;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.backstage.entity.User;
import com.backstage.user.UserDaoImpl.UserDaoImpl;

/**
 * @date 2018年12月21日 下午12:59:39 
 * @author 王玉玲
*/

@Service
@Transactional(readOnly=false)
public class UserServiceImpl {
	@Resource
	private UserDaoImpl userdaoimpl;
	//查询操作
	public List<User> getUserInformation() {
		return userdaoimpl.getUserInformation();
	}
	//删除这个用户
	public void duser(String dphone) {
		userdaoimpl.duser(dphone);	
	}
	public List<User> getOneUserInformation(String sphone) {
		return userdaoimpl.getOneUserInformation(sphone);
	}
	public List<User> getOneRestaurantInformation(String srestaurant) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
