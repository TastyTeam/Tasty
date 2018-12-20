package com.tasty.map.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tasty.entity.Restaurant;
import com.tasty.map.dao.MapDao;
/**
 * @author 袁培凯
 * @param 查询商家
*/

@Service
public class MapService {
	@Resource
	private MapDao mapDao;
	
	public List<Restaurant> selectAll() {
		return mapDao.findAll();
	}
}
