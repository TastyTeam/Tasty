package com.tasty.privateorder.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.entity.Food;
import com.tasty.entity.FoodType;
import com.tasty.privateorder.dao.PrivateDao;

@Service
@Transactional(readOnly=true)
public class PrivateService {
	
	@Resource
	private PrivateDao privatedao;
	
	public List<FoodType> list(){
		return this.privatedao.findAll();
	}

	public List<Food> findFood(String str5,String str6,String str7,String str8){
		List<Food> food=this.privatedao.findFood(str5,str6,str7,str8);
		
		for(Food a:food)
		{
			String foodothers=a.getFoodOther().split(";")[2].split(":")[0];
			
			a.setFoodOther(foodothers);
			
		}
		return food;
	}
	


}
