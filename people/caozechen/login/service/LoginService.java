package com.tasty.login.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tasty.entity.User;
import com.tasty.login.dao.LoginDao;

@Service
public class LoginService {
	@Resource
	private LoginDao loginDao;
	public User getUser(String phone) {
		 List<User> list=this.loginDao.findAll(phone);
		 if(list.size()==0) {
			 return null;
		 }else {
			 return list.get(0);
		 }
		}
}
