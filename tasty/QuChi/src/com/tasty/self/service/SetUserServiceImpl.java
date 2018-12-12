package com.tasty.self.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.self.dao.SelfDaoImpl;
/**
 * 
 * @date 2018年12月11日 下午5:13:21 
 * @author 董莹
 * @return SetUserServiceImpl
 * @param
 */
@Service
@Transactional(readOnly=false)
public class SetUserServiceImpl {
	@Resource
	private SelfDaoImpl selfDaoImpl;
	public void setusername(String name,String phone) {
		selfDaoImpl.setUserName(name, phone);
	}
	public void setpassword(String password,String phone) {
		selfDaoImpl.setUserPassword(password, phone);
	}
	public void setsex(String sex,String phone) {
		selfDaoImpl.setUserSex(sex, phone);
	}
	public void setaddress(String address,String phone) {
		selfDaoImpl.setUserAddress(address, phone);
	}
	
}
