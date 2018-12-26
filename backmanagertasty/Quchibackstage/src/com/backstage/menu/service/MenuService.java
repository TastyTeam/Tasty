package com.backstage.menu.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.backstage.entity.FoodType;
import com.backstage.menu.dao.MenuDao;

/**
 * @author 祁虹蕾
 * @date 2018年12月24日
 * @return 
 */
@Service
@Transactional(readOnly=false)
public class MenuService {
	@Resource
	private MenuDao menudao;

	//查询父类型
	public List<FoodType> getParentType() {
		return menudao.getParentType();
	}
	
	//查询对应子类型
/*	public List<FoodType> getSelect(int parentId){
		return menudao.getSelect(parentId);
	}*/

/*	public FoodType findFoodTypeOne(String parentId) {
		return menudao.findFoodTypeOne(parentId);
	}*/

	public void save(FoodType foodtype) {
			try {
				menudao.save(foodtype);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public void setParentType(String typeName) {
		menudao.setParentType(typeName);
	}
//删除操作
	public void dFoodType(String dtypeId) {
		menudao.dFoodType(dtypeId);
	}
}
