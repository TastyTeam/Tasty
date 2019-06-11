package com.tasty.searchindex.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tasty.entity.Food;
import com.tasty.searchindex.dao.SearchIndexDao;

@Service
public class SearchIndexService {
	@Resource
	private SearchIndexDao searchIndexDao;
	public List<Food> getFood() {
		List<Food> list=this.searchIndexDao.findAll();
		 return list;
	}
}
