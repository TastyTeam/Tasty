package com.tasty.ourProvide.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.entity.Article;
import com.tasty.entity.ArticleType;
import com.tasty.entity.Food;
import com.tasty.ourProvide.dao.PrivateOrderDao;

/**
 * 
 * @date 2018年12月17日 上午10:36:20 
 * @author 董莹
 * @return PrivateOrderServiceImpl
 * @param
 */
@Service
@Transactional(readOnly=true)
public class PrivateOrderServiceImpl {
	@Resource
	private PrivateOrderDao privateOrderDao;
	public Food getfoodbyid(int foodid) {
		return privateOrderDao.getfoodbyid(foodid);
	}
	/**
	 * 
	 * @date 2018年12月18日 上午14:36:20 
	 * @author 王玉玲
	 * @return PrivateOrderServiceImpl
	 * @param
	 */
	public List<ArticleType> queryArticleTypes (){
		return privateOrderDao.queryArticleTypes();
	}
	

}
