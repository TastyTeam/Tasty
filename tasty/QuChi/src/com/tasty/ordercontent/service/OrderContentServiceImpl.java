package com.tasty.ordercontent.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.entity.Cart;
import com.tasty.entity.FastFood;
import com.tasty.entity.MyOrder;
import com.tasty.entity.OrderDetail;
import com.tasty.ordercontent.dao.OrderContentDaoImpl;

/**
 * 
 * @date 2018年12月5日 上午9:57:47 
 * @author 董莹
 * @return OrderContentServiceImpl
 * @param
 */
@Service
@Transactional(readOnly=true)
public class OrderContentServiceImpl {
	@Resource
	private OrderContentDaoImpl orderContentDaoImpl;
	public List<Cart> getfastfood(String orderuuid) {
		return orderContentDaoImpl.getFastFood(orderuuid);
		}
	
	@Transactional(readOnly=true)
	public MyOrder getmyorder(String uuid) {
		return orderContentDaoImpl.getmyorder(uuid);
	}

	@Transactional(readOnly=true)
	public List<OrderDetail> getorderdetail(String orderuuid) {
		return orderContentDaoImpl.getorderdetail(orderuuid);
	}

	
}
