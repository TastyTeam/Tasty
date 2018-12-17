package com.tasty.fooddetail.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.entity.Food;
import com.tasty.fooddetail.dao.FoodDetailDaoImpl;

/**
 * @date 2018年12月7日 下午2:03:38
 * @author 王玉玲
 */
@Service
@Transactional(readOnly = true)
public class FoodDetailServiceImpl {
	@Resource
	private FoodDetailDaoImpl fooddetaildaoimpl;

	/**
	 * @desc用于查询一个菜品详细信息
	 * @param ShopID，商家ID
	 */
	public Food queryFood(int foodId) {
		Food food = fooddetaildaoimpl.queryFood(foodId);
		return food;
	}

	/**
	 * @desc对于查询到的菜品详细信息进行
	 * @param ShopID，商家ID
	 */

	public Map<String, String> getFoodMain(int foodId) {
		Map<String, String> listfood = new HashMap<String, String>(0);
		Food food = fooddetaildaoimpl.queryFood(foodId);
		String foodMain = food.getFoodMain();
		String[] foods = foodMain.split(";");
		for (int i = 0; i < foods.length; i++) {
			String foodmainsplit = foods[i];
			String[] foodsplit = foodmainsplit.split(":");
			listfood.put(foodsplit[0], foodsplit[1]);
		}
		return listfood;
	}

	/**
	 * @desc对于查询到的菜品详细信息进行
	 * @param ShopID，商家ID
	 */

	public Map<String, String> getIngredients(int foodId) {
		Map<String, String> foodingredient = new HashMap<String, String>(0);
		Food food = fooddetaildaoimpl.queryFood(foodId);
		String foodMain = food.getFoodIngredients();
		String[] foods = foodMain.split(";");
		for (int i = 0; i < foods.length; i++) {
			String foodmainsplit = foods[i];
			String[] foodsplit = foodmainsplit.split(":");
			foodingredient.put(foodsplit[0], foodsplit[1]);
		}
		return foodingredient;
	}

	/**
	 * @desc对于查询到的菜品其他信息
	 * @param ShopID，商家ID
	 */

	public Map<String, String> getfoodOther(int foodId) {
		Map<String, String> foodother = new HashMap<String, String>(0);
		Food food = fooddetaildaoimpl.queryFood(foodId);
		String foodMain = food.getFoodOther();
		String[] foods = foodMain.split(";");
		for (int i = 0; i < foods.length; i++) {
			String foodmainsplit = foods[i];
			String[] foodsplit = foodmainsplit.split(":");
			foodother.put(foodsplit[0], foodsplit[1]);
		}
		return foodother;
	}

	/**
	 * @desc对于查询到的菜品的图片
	 * @param ShopID，商家ID
	 */

	public List<String> getFoodImg(int foodId) {
		List<String> foodother = new ArrayList<String>(0);
		Food food = fooddetaildaoimpl.queryFood(foodId);
		String foodMain = food.getFoodStepimg();
		String[] foods = foodMain.split(";");
		for (int i = 0; i < foods.length; i++) {
			foodother.add(foods[i]);
		}
		return foodother;
	}

	/**
	 * @desc对于查询到的菜品的步骤
	 * @param ShopID，商家ID
	 */

	public List<String> getFoodStep(int foodId) {
		List<String> foodstep = new ArrayList<String>(0);
		Food food = fooddetaildaoimpl.queryFood(foodId);
		String foodMain = food.getFoodSteptext();
		String[] foods = foodMain.split(";");
		for (int i = 0; i < foods.length; i++) {
			foodstep.add(foods[i]);
		}
		return foodstep;
	}

	/**
	 * @desc对于查询到的菜品类型
	 * @param ShopID，商家ID
	 */

	public List<String> getFoodType(int foodId) {
		List<String> foodtype = new ArrayList<String>(0);
		Food food = fooddetaildaoimpl.queryFood(foodId);
		String foodType = food.getFoodType();
		String[] foods = foodType.split(";");
		for (int i = 0; i < foods.length; i++) {
			foodtype.add(foods[i]);
		}
		return foodtype;
	}

	/**
	 * @desc对评价级别进行操作
	 * @param ShopID，商家ID
	 */
	public void changeGrade(String grade, int foodId,String phone) {
		Food food = fooddetaildaoimpl.queryFood(foodId);
		if (grade == null) {
			grade = "0";
		}
		String changedgrade = grade.substring(0, 1);
		fooddetaildaoimpl.saveComment(foodId, phone, changedgrade);

	}

}
