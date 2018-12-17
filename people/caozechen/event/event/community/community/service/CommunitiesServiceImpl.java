package com.tasty.community.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tasty.community.dao.CommunitiesDaoImpl;
import com.tasty.entity.Community;

/**
 * @date 2018骞�12鏈�11鏃� 涓嬪崍2:59:21 
 * @author 鐜嬬帀鐜�
 * @param 
*/
@Service
public class CommunitiesServiceImpl {
	@Resource
	private CommunitiesDaoImpl communitesdaoimpl;
	/**
	 * 鏌ヨ鐢ㄦ埛绀惧尯淇℃伅
	 * @return 
	*/
	public List<Community> queryCommunitiesMessage(int pageNum,int pageSize) {
		if (pageNum==0||pageSize==0) {
			pageNum=1;
			pageSize=10;
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
	public Community queryOneCommunities(int communitiesid) {
		return communitesdaoimpl.queryOneCommunities(communitiesid);
	}
}
