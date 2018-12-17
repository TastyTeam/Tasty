package com.tasty.forgetPwd.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tasty.entity.User;
import com.tasty.forgetPwd.dao.ForgetPwdDao;

@Service
public class ForgetPwdService {
	@Resource
	public ForgetPwdDao forgetPwdDao;
	public User getUser(String phone) {
		 List<User> list=this.forgetPwdDao.findAll(phone);
		 if(list.size()==0) {
			 return null;
		 }else {
			 return list.get(0);
		 }
		}
}
