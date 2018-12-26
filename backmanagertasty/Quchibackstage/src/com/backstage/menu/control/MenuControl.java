package com.backstage.menu.control;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.backstage.entity.FoodType;
import com.backstage.entity.User;
import com.backstage.menu.service.MenuService;

/**
 * @author 祁虹蕾
 * @date 2018年12月24日
 * @return 
 */
@Controller
@RequestMapping("/Menu")
public class MenuControl {
	@Resource
	private MenuService menuservice;

	@RequestMapping("/menu")
	public String menu(HttpServletRequest request) {
		//得到电话
				String dtypeId=request.getParameter("dtypeId");
			//对于得到的参数进行判断处理
				if(dtypeId!=null) {
				//	System.out.println("dsfskldfjs");
					//如果删除请进行删除
					menuservice.dFoodType(dtypeId);
				}
				//查询操作			
		List<FoodType> listtype=menuservice.getParentType();
		request.setAttribute("parenttype", listtype);
		
		return "Menu/index";
	}
	
	@RequestMapping("/add")
	public String add(HttpServletRequest request) {
		//得到父类型
		List<FoodType> listtype=menuservice.getParentType();
		//存储父类型
		request.setAttribute("parenttype1", listtype);
		//得到父类型id
		String parentId=request.getParameter("parentid");
	/*	System.out.println("父类型："+parentId);*/
		//得到父类型名称
		String typeName=request.getParameter("typeName");
		//查出父类型
		int parentid;
		if(parentId==null) {
			 parentid=0;
		}else {
			 parentid=Integer.parseInt(parentId);
		}
		
	
		if(parentId==null && typeName==null) {
			/*System.out.println("全部为空无法保存");*/
			
		}else if(parentid==0 && typeName=="") {
			/*System.out.println("全部为空无法保存2");*/
		}else if(parentid!=0 && typeName=="" ) {
			/*System.out.println("没有选择父类型");*/
		}
		else if(parentid==0 && typeName!=null) {
			FoodType foodtype=new FoodType();
			foodtype.setParentId(null);
			menuservice.setParentType(typeName);
/*			System.out.println("=================父类型："+parentId);
			System.out.println("=================输入："+typeName);*/
				
		}
		else if(parentid!=0 && typeName!=null){
//		FoodType foodtypeone=menuservice.findFoodTypeOne(parentId);
		int pid=0;
		if(parentId!=null && !"".equals(parentId)) {
			pid=Integer.parseInt(parentId);
		}
		FoodType foodtypeone=new FoodType();
		foodtypeone.setFoodTypeId(pid);
		FoodType foodtype=new FoodType();
		foodtype.setParentId(foodtypeone);
		foodtype.setTypeName(typeName);
//		foodtypeone.getChildTypes().add(foodtype);
		//保存
		menuservice.save(foodtype);}
		return "Menu/edit";
	}

}
