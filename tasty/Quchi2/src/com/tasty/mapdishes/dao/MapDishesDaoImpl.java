package com.tasty.mapdishes.dao;
import java.util.List;

import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Dishes;
import com.tasty.entity.FastFood;
import com.tasty.entity.Restaurant;


/**
 * @date 2018年12月4日 下午5:52:09 
 * @author 王玉玲
 * @param 查询商家图片和名称信心
*/
@Repository
public class MapDishesDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	/**
	 * @desc用于查询一个商家信息
	 * @param 
	 */
	public Restaurant findRestaurant(int restaurantId) {
		Session session=this.sessionFactory.getCurrentSession();
		
		Query q=session.createQuery("from Restaurant rs where rs.shopId=?");
			q.setInteger(0, restaurantId);
	Restaurant restaurant=(Restaurant)q.uniqueResult();

		return restaurant;
	}
	/**
	 * @param shopId 
	 * @desc用于查询一个商家菜品的所有类型
	 * @param 
	 */
	public List<Dishes> findRestaurantDishesType(int shopId) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Dishes ds where ds.restaurant.shopId=?");
		q.setInteger(0, shopId);
		List<Dishes> mapdisheslist=q.list();

		return mapdisheslist;
	}
	
}
