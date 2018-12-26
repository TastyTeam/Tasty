package com.backstage.restaurant.dao;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.backstage.entity.Restaurant;
import com.backstage.entity.User;
import com.backstage.util.BaseDao;
/**
 * @date 2018年12月24日 下午2:23:00 
 * @author 王玉玲
 * @param 
*/
@Repository
public class RestaurantDao extends BaseDao<Restaurant, Integer> {
//查询一个餐厅的信息
	public List<Restaurant> getOneRestaurantInformation(String srestaurantId) {
		String hql="from Restaurant r where r.shopId=?";
		List<Restaurant> listrestaurant = null;
		Integer srestaurantId2=new Integer(srestaurantId);
		Object[] params= {srestaurantId2};
		try {
			  listrestaurant=this.find(hql, params);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listrestaurant;
	}
	//删除餐厅的信息
	public void dRestaurant(String resaurantId) {
		try {
			int num=Integer.parseInt(resaurantId);
			Integer restaurant=new Integer(num);
			System.out.println(restaurant);
			this.delete(restaurant);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
//查询所有餐厅的信息
	public List<Restaurant> getRestaurantInformation() {
		List<Restaurant> listrestaurant=null;
		try {
			listrestaurant=this.findAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listrestaurant;
	}
	//更新数据
	public void updateRestaurant(String erestaurantId, String restaurantfaredetail, String restaurantname,
			String restauranttime, String restaurantfare, String restaurantintroduce, String restaurantlawyer,
			String restaurantfullreduce) {
		Restaurant updaterestaurant=new Restaurant();
		updaterestaurant.setArriveTime(Integer.parseInt(restauranttime));
		updaterestaurant.setFullReduce(restaurantfullreduce);
		updaterestaurant.setLawyerpeople(restaurantlawyer);
		updaterestaurant.setSendFareMore(restaurantfaredetail);
		updaterestaurant.setSendFare(Integer.parseInt(restaurantfare));
		updaterestaurant.setShopId(Integer.parseInt(erestaurantId));
		updaterestaurant.setShopName(restaurantname);
		updaterestaurant.setShopIntroduce(restaurantintroduce);
		try {
			this.update(updaterestaurant);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void saveRestaurant(String restaurantfaredetail, String restaurantname, String restauranttime,
			String restaurantfare, String restaurantintroduce, String restaurantlawyer, String restaurantfullreduce) {
		Restaurant saverestaurant=new Restaurant();
		saverestaurant.setArriveTime(Integer.parseInt(restauranttime));
		saverestaurant.setFullReduce(restaurantfullreduce);
		saverestaurant.setLawyerpeople(restaurantlawyer);
		saverestaurant.setSendFareMore(restaurantfaredetail);
		saverestaurant.setSendFare(Integer.parseInt(restaurantfare));
		saverestaurant.setShopName(restaurantname);
		saverestaurant.setShopIntroduce(restaurantintroduce);
		try {
			this.save(saverestaurant);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}
	
}
