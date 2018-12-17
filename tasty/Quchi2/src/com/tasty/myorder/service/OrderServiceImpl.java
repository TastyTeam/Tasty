package com.tasty.myorder.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.entity.MyOrder;
import com.tasty.myorder.dao.OrderDao;

/**
 * 
 * @date 2018年12月4日 下午2:39:27 
 * @author 董莹
 * @return Order
 * @param
 */
@Service
@Transactional(readOnly=true)
public class OrderServiceImpl {

	@Resource
	private OrderDao orderdao;
	public List<MyOrder> getOrder(String phone) {
		return orderdao.getOrder(phone);
	}

}
