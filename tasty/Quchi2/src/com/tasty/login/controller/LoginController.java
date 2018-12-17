package com.tasty.login.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tasty.entity.User;
import com.tasty.login.service.LoginService;

@Controller
public class LoginController {
	@Resource
	private LoginService loginService;
	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request) {
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");
		String yan=request.getParameter("yan");
		User user=loginService.getUser(phone);
		
		Object obj=request.getServletContext().getAttribute("yan");
		if(phone.length()==0) {
			request.setAttribute("msg","手机号不能为空");
			return "login";
		}else if(phone.length()!=11) {
			request.setAttribute("msg","电话号码格式不正确");
			request.setAttribute("phone",phone);
			return "login";
		}else if(user==null) {
			request.setAttribute("msg","此电话未注册");
			request.setAttribute("phone",phone);
		}else if(password.length()==0) {
			request.setAttribute("msg","密码不能为空");
			request.setAttribute("phone",phone);
			request.setAttribute("pwd",password);
			return "login";
		}else if(!password.equals(user.getPassword())) {
			request.setAttribute("msg", "密码错误");
			request.setAttribute("phone",phone);
			request.setAttribute("pwd",password);
			return "login";
		}else {
			String yan1=(String)obj;
			if(!yan.equals(yan1)) {
			request.setAttribute("msg","验证码不正确");
			request.setAttribute("phone",phone);
			request.setAttribute("pwd",password);
			return "login";
			}else {
				HttpSession session=request.getSession();
				session.setAttribute("phone", phone);
				session.setAttribute("uname", user.getUserName());
				return "index";
			}
		}
		return 	"login";	
		
		
				
	}
	
	
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public void yan(HttpServletResponse response,HttpServletRequest request) throws IOException {
		// 使用java图形界面技术绘制一张图片
				int charNum = 4;
				int width = 30 * 4;
				int height = 30;

				// 1. 创建一张内存图片
				BufferedImage bufferedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

				// 2.获得绘图对象
				Graphics graphics = bufferedImage.getGraphics();

				// 3、绘制背景颜色
				//graphics.setColor(Color.YELLOW);
				graphics.setColor(Color.white);
				graphics.fillRect(0, 0, width, height);

				// 4、绘制图片边框
				graphics.setColor(Color.BLUE);
				graphics.drawRect(0, 0, width - 1, height - 1);

				// 5、输出验证码内容
				graphics.setColor(Color.RED);
				graphics.setFont(new Font("宋体", Font.BOLD, 20));

				// 随机输出4个字符
				Graphics2D graphics2d = (Graphics2D) graphics;
				String s = "ABCDEFGHGKLMNPQRSTUVWXYZ23456789";
				Random random = new Random();
				// session中要用到
				String msg = "";
				int x = 5;
				
				for (int i = 0; i < 4; i++) {
					int index = random.nextInt(32);
					String content = String.valueOf(s.charAt(index));
					msg += content;
					double theta = random.nextInt(45) * Math.PI / 180;
					// 让字体扭曲
					graphics2d.rotate(theta, x, 18);
					graphics2d.drawString(content, x, 18);
					graphics2d.rotate(-theta, x, 18);
					x += 30;
				}
				//保存到session
				request.getServletContext().setAttribute("yan", msg);
				// 6、绘制干扰线
				graphics.setColor(Color.GRAY);
				for (int i = 0; i < 5; i++) {
					int x1 = random.nextInt(width);
					int x2 = random.nextInt(width);

					int y1 = random.nextInt(height);
					int y2 = random.nextInt(height);
					graphics.drawLine(x1, y1, x2, y2);
				}

				// 释放资源
				graphics.dispose();

				// 图片输出 ImageIO
				ImageIO.write(bufferedImage, "jpg", response.getOutputStream());
	}
}


