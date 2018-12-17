package com.tasty.community.service;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.community.dao.ComDao;
import com.tasty.entity.Community;

/**
 * @date 2018ƒÍ12‘¬17»’
 * @author ≤‹‘Û≥Ω
*/

@Service
@Transactional(readOnly=false)
public class ComServiceImpl {
	@Resource
	private ComDao comdao;

	public void insertCommunity(Community community) {
		this.comdao.insertcom(community);		
	}

}
