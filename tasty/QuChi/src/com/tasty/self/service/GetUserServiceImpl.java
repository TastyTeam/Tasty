package com.tasty.self.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.entity.User;
import com.tasty.self.dao.SelfDaoImpl;
/**
 * 
 * @date 2018年12月11日 下午5:13:13 
 * @author 董莹
 * @return GetUserServiceImpl
 * @param
 */
@Service
@Transactional(readOnly=true)
public class GetUserServiceImpl {

	@Resource
	private SelfDaoImpl selfDaoImpl;
	public User getuser(String phone) {
		return selfDaoImpl.getuser(phone);
	};

}
