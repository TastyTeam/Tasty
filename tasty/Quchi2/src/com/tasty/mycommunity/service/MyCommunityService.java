package com.tasty.mycommunity.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.entity.Community;
import com.tasty.entity.User;
import com.tasty.mycommunity.dao.MyCommunityDao;

@Service
@Transactional(readOnly=true)
public class MyCommunityService {

	@Resource 
	private MyCommunityDao mycommunitydao;
	
	public User list(String phone){
		
		return this.mycommunitydao.findAll(phone);
	}
	

}
