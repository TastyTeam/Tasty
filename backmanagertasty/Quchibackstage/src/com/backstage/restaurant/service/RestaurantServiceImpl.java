package com.backstage.restaurant.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.backstage.entity.Restaurant;
import com.backstage.entity.User;
import com.backstage.restaurant.dao.RestaurantDao;

/**
 * @date 2018年12月24日 上午11:13:48 
 * @author 王玉玲
 * @param 
*/
@Service
@Transactional(readOnly=false)
public class RestaurantServiceImpl {
	@Resource
	private RestaurantDao restaurantdaoimpl;
//得到一个餐厅的信息
	public List<Restaurant> getOneRestaurantInformation(String srestaurant) {
		
		return restaurantdaoimpl.getOneRestaurantInformation(srestaurant);
	}
//得到所有餐厅信息
	public List<Restaurant> getRestaurantInformation() {
		return restaurantdaoimpl.getRestaurantInformation();
	}
//删除餐厅信息
	public void dRestaurant(String resaurant) {
		restaurantdaoimpl.dRestaurant(resaurant);
		
	}
	//新建Restaurant并存入信息
	public void updateRestaurantInformation(String erestaurantId, String restaurantfaredetail,
			String restaurantname, String restauranttime, String restaurantfare, String restaurantintroduce,
			String restaurantlawyer, String restaurantfullreduce) {
		restaurantdaoimpl.updateRestaurant(erestaurantId,restaurantfaredetail,
				 restaurantname,restauranttime,restaurantfare,restaurantintroduce,
				 restaurantlawyer,restaurantfullreduce);

			
	}
	//保存一个新的商家
	public void saveRestaurantInformation(String restaurantfaredetail, String restaurantname, String restauranttime,
			String restaurantfare, String restaurantintroduce, String restaurantlawyer, String restaurantfullreduce) {
		restaurantdaoimpl.saveRestaurant(restaurantfaredetail,
				 restaurantname,restauranttime,restaurantfare,restaurantintroduce,
				 restaurantlawyer,restaurantfullreduce);

		
	}
	
}
