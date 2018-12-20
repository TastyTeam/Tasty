package com.tasty.ourProvide.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tasty.entity.Article;
import com.tasty.entity.ArticleType;
import com.tasty.entity.Food;
/**
 * 
 * @date 2018年12月17日 上午10:35:32 
 * @author 董莹
 * @return PrivateOrderDao
 * @param
 */
@Repository
public class PrivateOrderDao {
	@Resource
	private SessionFactory sessionFactory;
	public Food getfoodbyid(int foodid) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Food where foodId=?");
		q.setInteger(0, foodid);
		return (Food)q.uniqueResult();
	}
	
	/**
	 * 
	 * @date 2018年12月17日 上午10:35:32 
	 * @author王玉玲
	 * @return 文章类型list
	 * @param无
	 */
	public List<ArticleType> queryArticleTypes() {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from ArticleType");
		return (List<ArticleType>)q.list();
	}

	

}
