package com.tasty.community.control;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.tasty.community.service.ComServiceImpl;
import com.tasty.entity.Community;
import com.tasty.entity.Time;
import com.tasty.entity.User;

/**
 * @date 2018年12月17日
 * @author 曹泽辰
*/

@Controller
public class CommunityController {
	@Resource
	private ComServiceImpl comServiceImpl;
	
	@RequestMapping(value="/FileUploadServlet",method = RequestMethod.POST)
	//@ResponseBody
	public String uploadfile(HttpServletRequest request,HttpServletResponse response){	
		String fileName = null;
		try{
		//鍒涘缓涓�涓�氱敤鐨勫閮ㄥ垎瑙ｆ瀽鍣�
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
		    if (multipartResolver.isMultipart(request)) {
		            // 杞崲鎴愬閮ㄥ垎request
		            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
		            // 鍙栧緱request涓殑鎵�鏈夋枃浠跺悕
		            Iterator<String> iter = multiRequest.getFileNames();
		            
		            while (iter.hasNext()) {
		                //System.out.println("dsfddf"+iter.next());
		                // 鍙栧緱涓婁紶鏂囦欢
		                MultipartFile file = multiRequest.getFile(iter.next());
		               
		                if (file != null) {
		                    // 鍙栧緱褰撳墠涓婁紶鏂囦欢鐨勬枃浠跺悕绉�/		                    
		                	String myFileName = file.getOriginalFilename();
		                    // 濡傛灉鍚嶇О涓嶄负鈥溾��,璇存槑璇ユ枃浠跺瓨鍦紝鍚﹀垯璇存槑璇ユ枃浠朵笉瀛樺湪
		                    if (myFileName.trim() != "") {
		                        System.out.println(myFileName);
		                        // 閲嶅懡鍚嶄笂浼犲悗鐨勬枃浠跺悕
		                         fileName = file.getOriginalFilename();
		                        // 瀹氫箟涓婁紶璺緞
		                
		                     String path = request.getServletContext().getRealPath("/")+"/images/"+fileName;	
		                     //System.out.println(path);
		                        //String path = "-" + fileName;
		                        File localFile = new File(path);
		                        file.transferTo(localFile);
		                    }
		                }
		              
		            }		 
		        }
		    
		    String message=request.getParameter("message");
			String title=request.getParameter("title");
			Community community1=new Community();
			Date date=new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			//Time time=new Time();
			//String t=time.time(date);
			String t=df.format(date);
			community1.setTime(t);
			community1.setContent(message);
			community1.setAddress("address");
			String lu="images/"+fileName;
			community1.setImg(lu);
			community1.setTitle(title);
			User user1=new User();
			Object obj=request.getSession().getAttribute("phone");
			String uphone=(String)obj;
			user1.setPhone(uphone);
			community1.setUser(user1);
			Random random=new Random();
			int hot=random.nextInt(2);
			community1.setHot(hot);
			this.comServiceImpl.insertCommunity(community1);
		    
		    
		        return "redirect:/communities";
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		
		
		}
		
}		
		
		
				
							

