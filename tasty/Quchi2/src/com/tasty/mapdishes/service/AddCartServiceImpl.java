package com.tasty.mapdishes.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.entity.OrderDetail;
import com.tasty.mapdishes.dao.AddCartDaoImpl;

/**
 * 
 * @date 2018年12月7日 下午5:04:03 
 * @author 董莹
 * @return AddCartServiceImpl
 * @param
 */
@Service
@Transactional(readOnly=false)
public class AddCartServiceImpl {
	@Resource
	private AddCartDaoImpl addCartDaoImpl;
	public void setorderdetail(String orderuuid,int fastfoodNumber,int fastfoodId,int orderDetailId) {
		addCartDaoImpl.setOrderDetail(orderuuid,fastfoodNumber,fastfoodId,orderDetailId);
	}
	public void setshopIdTOMyOrder(String orderuuid,int shopId,String phone) {
		addCartDaoImpl.setshopIdTOMyOrder(orderuuid, shopId,phone);
	}
	public void setMyOrderShopId(String orderuuid, int shopId) {
		addCartDaoImpl.setMyOrderShopId(orderuuid,shopId);
		
	}
	public boolean getfoodexit(String od, int fastfoodid) {
		return addCartDaoImpl.getfoodexit(od,fastfoodid);
		
	}

}
