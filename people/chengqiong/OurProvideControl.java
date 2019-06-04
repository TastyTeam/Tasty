package com.tasty.ourProvide.control;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
	public com.tasty.nagivation.service.NagivationService nagivationService;

	@RequestMapping("/ourprovide")
	public String ourprovide(HttpServletRequest request) {
		List<OurProvide> list = this.ourProvideService.list();
		request.getServletContext().setAttribute("ourprovide", list);
		List<Navigation> lists = this.nagivationService.list();
		request.getServletContext().setAttribute("lists", lists);
		// request.setAttribute("lists", lists);

		HttpSession session = request.getSession();
		String phone = (String) session.getAttribute("phone");
		if (phone != null && !phone.equals("")) {
			String a = phone;
			System.out.println("a" + a);
			try {
				// 写自己的文档路径默认eclipse工作目录下
				System.out.println("oythionb");
				String[] arg = new String[] { "python", "D:\\大三下\\project\\tasty1\\CollaborativeFilter.py", a };
				String[] arg1 = new String[] { "python", "D:\\大三下\\project\\tasty1\\recommendBasedItem.py", a };
				Process proc = Runtime.getRuntime().exec(arg);// 执行py文件
				Process proc1 = Runtime.getRuntime().exec(arg1);// 执行py文件
				System.out.println(proc);
				BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream()));
				BufferedReader in1 = new BufferedReader(new InputStreamReader(proc1.getInputStream()));
				String line = null;
				String line1 = null;
				//List<Food> indexfood = new ArrayList<Food>();
				Set<Food> indexfood=new HashSet<Food>();
				while ((line = in.readLine()) != null && (line1 = in1.readLine()) != null) {
					// 返回九个推荐文章编号
					//System.out.println(line);
					int foodid1 = Integer.parseInt(line);
					int foodid2 = Integer.parseInt(line1);
					//System.out.println(foodid1+"aaaaaa"+foodid2);
					//privateOrderServiceImpl.getfoodbyid(foodid);
					if(indexfood.size()<9) {
					indexfood.add(privateOrderServiceImpl.getfoodbyid(foodid1));
					indexfood.add(privateOrderServiceImpl.getfoodbyid(foodid2));
					}
				}
				request.setAttribute("indexfood", indexfood);
				in.close();
				in1.close();
				proc.waitFor();
				proc1.waitFor();
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
		List<ArticleType> articletype = privateOrderServiceImpl.queryArticleTypes();
		request.getServletContext().setAttribute("articletype", articletype);
		return "main";
	}
}
