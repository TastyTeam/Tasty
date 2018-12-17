package com.tasty.regist.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.entity.User;
import com.tasty.regist.dao.RegistDao;

@Service
@Transactional(readOnly=false)
public class RegistService {
	@Resource
	public RegistDao registDao;
	
	public void addAccount(User user) {
		try {
			registDao.addUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
	
	
public List<User> list() {
		
		return this.registDao.findAll();
	}
}

