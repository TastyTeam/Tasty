package com.tasty.ourProvide.control;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasty.entity.ArticleType;
import com.tasty.entity.Food;
import com.tasty.entity.Navigation;
import com.tasty.entity.OurProvide;
import com.tasty.ourProvide.service.OurProvideService;
import com.tasty.ourProvide.service.PrivateOrderServiceImpl;

/**
 * @date 12.4
 * @author 祁虹蕾
 * @return ${return_type}
 * @param 
*/
@Controller
public class OurProvideControl {
	@Resource
	private OurProvideService ourProvideService;
	@Resource
	private PrivateOrderServiceImpl privateOrderServiceImpl;
	@Resource
	public com.tasty.nagivation.service.NagivationService nagivationService ;
	@RequestMapping("/ourprovide")
	public String ourprovide(HttpServletRequest request) {
		List<OurProvide> list=this.ourProvideService.list();
		request.getServletContext().setAttribute("ourprovide", list);
		List<Navigation> lists=this.nagivationService.list();
		request.getServletContext().setAttribute("lists", lists);
		//request.setAttribute("lists", lists);
		
	
				HttpSession session=request.getSession();
				String phone=(String)session.getAttribute("phone");
				if(phone!=null&&!phone.equals("")) {
					String a = phone;
					System.out.println("a"+a);
					try {
						//写自己的文档路径默认eclipse工作目录下
						System.out.println("oythionb");
						String[] arg = new String[] { "python", "E:/CollaborativeFilter.py", a };
						Process proc = Runtime.getRuntime().exec(arg);// 执行py文件
						BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream()));
						String line = null;
						List<Food> indexfood=new ArrayList<Food>();
						while ((line = in.readLine()) != null) {
							//返回九个推荐文章编号
							System.out.println(line);
							
							int foodid=Integer.parseInt(line);
							privateOrderServiceImpl.getfoodbyid(foodid);
							indexfood.add(privateOrderServiceImpl.getfoodbyid(foodid));
							
						}
						request.setAttribute("indexfood", indexfood);
						in.close();
						proc.waitFor();
					} catch (IOException e) {
						e.printStackTrace();
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
					
				}
					
				/**
				 * @date 12.18
				 * @author 王玉玲
				 * @return void
				 * @param 
				*/			
			List<ArticleType> articletype=privateOrderServiceImpl.queryArticleTypes();
			request.getServletContext().setAttribute("articletype", articletype);
			return "main";
	}
}
