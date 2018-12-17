package com.tasty.ordercontent.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.ordercontent.dao.OrderContentInsertDao;

/**
 * 
 * @date 2018年12月5日 下午3:59:03 
 * @author 董莹
 * @return OrderContentInsertService
 * @param
 */
@Service
@Transactional(readOnly=false)
public class OrderContentInsertService {
	@Resource
	private OrderContentInsertDao orderContentInsertDao;
	public void insertmyorder(String phone,String orderuuid,String orderName,String orderAddress,String orderSex) {
		orderContentInsertDao.setmyorder(phone, orderuuid, orderName, orderAddress, orderSex);
	}
	@Transactional(readOnly=false)
	public void insertother(String addinformation,int tableware,String orderuuid) {
		orderContentInsertDao.setother(addinformation, tableware, orderuuid);
	}

}
