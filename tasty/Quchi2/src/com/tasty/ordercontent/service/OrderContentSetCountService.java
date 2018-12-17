package com.tasty.ordercontent.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.ordercontent.dao.OrderContentInsertDao;

@Service
@Transactional(readOnly=false)
public class OrderContentSetCountService {
	@Resource
	private OrderContentInsertDao orderContentInsertDao;

	public void setcount(int count2,String orderuuid,int fastfoodId) {
		// TODO Auto-generated method stub
		orderContentInsertDao.setcount(count2,orderuuid,fastfoodId);
	}

}
