package com.tasty.ordercontent.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.ordercontent.dao.OrderContentInsertDao;
/**
 * 
 * @date 2018年12月17日 下午5:53:38 
 * @author 董莹
 * @return OrderContentSetCountService
 * @param
 */
@Service
@Transactional(readOnly=false)
public class OrderContentSetCountService {
	@Resource
	private OrderContentInsertDao orderContentInsertDao;

	public void setcount(int count2,String orderuuid,int fastfoodId) {
		// TODO Auto-generated method stub
		orderContentInsertDao.setcount(count2,orderuuid,fastfoodId);
	}
	public void setshoppingfee(int price,String orderuuid)
	{
		orderContentInsertDao.setprice(price,orderuuid);
		
	}
	public void delcount(String orderuuid,int fastfoodId) {
		orderContentInsertDao.delcount(orderuuid, fastfoodId);
	}

}
