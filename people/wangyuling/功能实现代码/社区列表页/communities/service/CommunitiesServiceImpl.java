package com.tasty.communities.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.tasty.communities.dao.CommunitiesDaoImpl;
import com.tasty.entity.Community;

/**
 * @date 2018年12月11日 下午2:59:21 
 * @author 王玉玲
 * @param 
*/
@Service
public class CommunitiesServiceImpl {
	@Resource
	private CommunitiesDaoImpl communitesdaoimpl;
	/**
	 * 查询用户社区信息
	 * @return 
	*/
	public List<Community> queryCommunitiesMessage(int pageNum,int pageSize) {
		if (pageNum==0||pageSize==0) {
			pageNum=1;
			pageSize=3;
		} 
		List<Community> communities = communitesdaoimpl.queryCommunitesMessage(pageNum,pageSize);
		return communities;
	}
	public int queryAllPage() {
		return communitesdaoimpl.queryAllPage();
	}
	public List<Community> queryHotArticle() {
		List<Community> hotarticle=communitesdaoimpl.queryHotArticle();
		return hotarticle;
	}
}
