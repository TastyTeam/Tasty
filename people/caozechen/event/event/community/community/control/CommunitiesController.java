package com.tasty.community.control;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasty.community.service.CommunitiesServiceImpl;
import com.tasty.entity.Community;
/**
 * @date 2018年12月10日 下午9:09:34 
 * @author 王玉玲
*/
@Controller
public class CommunitiesController {
	@Resource
	private CommunitiesServiceImpl communitiesserviceimpl;
	@RequestMapping("/communities")
	public String queryCommunitiesMessage(HttpServletRequest request) {	
		//得到当前页的页数
		String num=request.getParameter("pageNum");
		//首次登陆当前页，页码设置为1
		if (num==null) {
			num="1";
		} 
		int pageNum=Integer.parseInt(num);
		//根据页码进行查询，得到社区集合
		List<Community> communities=communitiesserviceimpl.queryCommunitiesMessage(pageNum, 6);
		//查询热点发表
		List<Community> hotarticle =communitiesserviceimpl.queryHotArticle();
		//查询数据总条数
		int allpage=communitiesserviceimpl.queryAllPage();
		//把查询到的参数返回
		request.setAttribute("communityarticle", communities);
		request.setAttribute("allpageNum", allpage);
		request.setAttribute("hotarticle", hotarticle); 
		request.setAttribute(num, pageNum);
		return "communities";
	}
}
