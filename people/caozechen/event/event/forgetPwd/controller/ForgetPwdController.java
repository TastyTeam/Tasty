package com.tasty.forgetPwd.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tasty.entity.User;
import com.tasty.forgetPwd.service.ForgetPwdService;

@Controller
public class ForgetPwdController {
	@Resource
	public ForgetPwdService forgetPwdService;
	@RequestMapping(value = "/zhao", method = RequestMethod.POST)
	public String find(HttpServletRequest request) {
		String phone=request.getParameter("phone");
		String yan=request.getParameter("yan1");
		User user=forgetPwdService.getUser(phone);
		Object obj=request.getServletContext().getAttribute("yan");
		String yan1=(String)obj;
		if(phone.length()==0) {
			request.setAttribute("msg2", "�ֻ��Ų���Ϊ��");
			return "forgetPwd";
		}else if(phone.length()!=11) {
			request.setAttribute("msg2","�绰�����ʽ����ȷ");
			request.setAttribute("phone",phone);
			return "forgetPwd";
		}else if(user==null) {
			request.setAttribute("msg2","�˵绰δע��");
			request.setAttribute("phone",phone);
			return "forgetPwd";
		}else if(!yan1.equals(yan)) {
			request.setAttribute("msg2","��֤�벻��ȷ");
			request.setAttribute("phone",phone);
			request.setAttribute("yan1",yan);
			return "forgetPwd";
		}else {
			request.getServletContext().setAttribute("phones", phone);
			request.setAttribute("phone",phone);
			return "forgetPwd2";
		}
	}
	
	
	
	
	
	@RequestMapping(value = "/add1", method = RequestMethod.GET)
	public void yan(HttpServletResponse response,HttpServletRequest request) throws IOException {
		// ʹ��javaͼ�ν��漼������һ��ͼƬ
				int charNum = 4;
				int width = 30 * 4;
				int height = 30;

				// 1. ����һ���ڴ�ͼƬ
				BufferedImage bufferedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

				// 2.��û�ͼ����
				Graphics graphics = bufferedImage.getGraphics();

				// 3�����Ʊ�����ɫ
				//graphics.setColor(Color.YELLOW);
				graphics.setColor(Color.white);
				graphics.fillRect(0, 0, width, height);

				// 4������ͼƬ�߿�
				graphics.setColor(Color.BLUE);
				graphics.drawRect(0, 0, width - 1, height - 1);

				// 5�������֤������
				graphics.setColor(Color.RED);
				graphics.setFont(new Font("����", Font.BOLD, 20));

				// ������4���ַ�
				Graphics2D graphics2d = (Graphics2D) graphics;
				String s = "ABCDEFGHGKLMNPQRSTUVWXYZ23456789";
				Random random = new Random();
				// session��Ҫ�õ�
				String msg = "";
				int x = 5;
				
				for (int i = 0; i < 4; i++) {
					int index = random.nextInt(32);
					String content = String.valueOf(s.charAt(index));
					msg += content;
					double theta = random.nextInt(45) * Math.PI / 180;
					// ������Ť��
					graphics2d.rotate(theta, x, 18);
					graphics2d.drawString(content, x, 18);
					graphics2d.rotate(-theta, x, 18);
					x += 30;
				}
				//���浽session
				request.getServletContext().setAttribute("yan", msg);
				// 6�����Ƹ�����
				graphics.setColor(Color.GRAY);
				for (int i = 0; i < 5; i++) {
					int x1 = random.nextInt(width);
					int x2 = random.nextInt(width);

					int y1 = random.nextInt(height);
					int y2 = random.nextInt(height);
					graphics.drawLine(x1, y1, x2, y2);
				}

				// �ͷ���Դ
				graphics.dispose();

				// ͼƬ��� ImageIO
				ImageIO.write(bufferedImage, "jpg", response.getOutputStream());
	}
	
}
