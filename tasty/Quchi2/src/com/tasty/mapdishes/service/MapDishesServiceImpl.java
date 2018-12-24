package com.tasty.mapdishes.service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.tasty.entity.Dishes;
import com.tasty.entity.FastFood;
import com.tasty.entity.Restaurant;
import com.tasty.mapdishes.dao.MapDishesDaoImpl;

/**
 * @date 2018年12月4日 下午5:51:00 
 * @author 王玉玲
 * @param 
*/
@Service
@Transactional(readOnly=true)
public class MapDishesServiceImpl {
	@Resource
	private MapDishesDaoImpl mapdishesdaoimpl;
	
	/**
	 * @desc用于查询一个商家信息
	 * @param ShopID，商家ID
	 */
	public Restaurant queryRestaurant(int shopId) {
		
		return mapdishesdaoimpl.findRestaurant(shopId);
	}
	/**
	 * @param shopId 
	 * @desc用于查询一个商家菜品的所有类型
	 * @param 
	 */
	public List<Dishes> queryDishTypeList(int shopId) {
		
		List<Dishes> mapdisheslis=mapdishesdaoimpl.findRestaurantDishesType(shopId);
		return mapdisheslis;
	}
	/**
	 * @desc用于查询一个商家菜品的所有类型
	 * @param key餐品类型的主键
	 */
	
}
