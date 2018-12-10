package com.tasty.community.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.community.dao.ComDao;

@Service
@Transactional(readOnly=false)
public class ComServiceImpl {
	@Resource
	private ComDao comdao;

	public void insertCommunity(int id1, String content1) {
		comdao.insertcom(id1, content1);
		
	}

}
