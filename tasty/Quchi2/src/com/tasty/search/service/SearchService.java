package com.tasty.search.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tasty.entity.Food;
import com.tasty.search.dao.SearchDao;

@Service
public class SearchService {
	@Resource
	private SearchDao searchDao;
	public List<Food> getFood(String foodName) {
		List<Food> list=this.searchDao.findAll(foodName);
		 return list;
	}
}
