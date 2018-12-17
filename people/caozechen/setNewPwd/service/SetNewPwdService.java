package com.tasty.setNewPwd.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.entity.User;
import com.tasty.setNewPwd.Dao.SetNewPwdDao;

@Service
@Transactional(readOnly=false)
public class SetNewPwdService {
	@Resource
	public SetNewPwdDao setNewPwdDao;
	public void updateUser(User user) {
		try {
			this.setNewPwdDao.updateUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public User getUser(String phone) {
		 List<User> list=this.setNewPwdDao.findAll(phone);
		 if(list.size()==0) {
			 return null;
		 }else {
			 return list.get(0);
		 }
		}
}
