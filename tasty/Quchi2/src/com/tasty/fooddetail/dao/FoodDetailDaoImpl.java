package com.tasty.fooddetail.dao;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Food;

/**
 * @date 2018年12月7日 下午2:03:38
 * @author 王玉玲
 */
@Repository
public class FoodDetailDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	/**
	 * @date 2018年12月7日 下午2:03:40
	 * @author 王玉玲
	 * @param foodId
	 * @desc查询具体的食物
	 */

	public Food queryFood(int foodId) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Food rs where rs.foodId=?");
		q.setInteger(0, foodId);
		Food food = (Food) q.uniqueResult();
		return food;
	}
	
	/**
	 * @date 2018年12月7日 下午2:03:40
	 * @author 王玉玲
	 * @desc存储数据
	 */

	public Boolean saveComment(int foodId,String phone,String changedgrade) {
		BufferedWriter bos = null;
		System.out.println("save"+changedgrade);
		try {
			//写自己的文档路径默认eclipse工作目录下
			bos=new BufferedWriter(new FileWriter("E:\\type.csv",true));
			//换行
			bos.newLine();
			//写入数据格式看type.csv的第一行
			bos.write(phone+","+foodId+","+changedgrade+".0");
			//刷新
			bos.flush();						
		} catch (IOException e1) {
			e1.printStackTrace();
		}finally {
			try {
				bos.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return false;
	}

	
	


	
	
	
}
