package com.backstage.menu.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.backstage.entity.FoodType;
import com.backstage.util.BaseDao;

@Repository
public class MenuDao extends BaseDao<FoodType, Integer> {
//查询父类型
	public List<FoodType> getParentType(){
		List<FoodType> listtype=null;
		try {
			listtype=this.findAll();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listtype;
	}
	
//更新
	@Resource
	private SessionFactory sessionFactory;
	public void setParentType(String typeName) {

		Session session=this.sessionFactory.getCurrentSession();

		Query q=session.createSQLQuery("insert into FoodType(typeName) values(?)");
		q.setString(0, typeName);		
		q.executeUpdate();
		
	}
/*	public FoodType findFoodTypeOne(String parentId) {
		int pid=0;
		if(parentId!=null && !"".equals(parentId)) {
			pid=Integer.parseInt(parentId);
		}
		String hql="from FoodType f where f.foodTypeId = ?";
		try {
			return this.findOne(hql, new Object[] {pid});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}*/
	//删除操作
	public void dFoodType(String dtypeId) {
		Integer typeId=new Integer(dtypeId);
		try {
			this.delete(typeId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
