package com.tasty.ourProvide.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.entity.Food;
import com.tasty.ourProvide.dao.PrivateOrderDao;

/**
 * 
 * @date 2018年12月17日 上午10:36:20 
 * @author 董莹
 * @return PrivateOrderServiceImpl
 * @param
 */
@Service
@Transactional(readOnly=true)
public class PrivateOrderServiceImpl {
	@Resource
	private PrivateOrderDao privateOrderDao;
	public Food getfoodbyid(int foodid) {
		return privateOrderDao.getfoodbyid(foodid);
	}
	

}
