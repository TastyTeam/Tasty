package com.tasty.mycommunity.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.entity.User;
import com.tasty.mycommunity.dao.MyCommunityDao;

@Service
@Transactional(readOnly=true)
public class MyCommunityService {

	@Resource 
	private MyCommunityDao mycommunitydao;
	
	public User list(String phone){
		User user=this.mycommunitydao.findAll(phone);

		
		
		return user;
	}
	

}
