package com.tasty.httpApiDemo;

import java.net.URLEncoder;
import java.util.Random;

import com.tasty.httpApiDemo.common.Config;
import com.tasty.httpApiDemo.common.HttpUtil;

/**
 * 验证码通知短信接口
 * 
 * @ClassName: IndustrySMS
 * @Description: 验证码通知短信接口
 *
 */
public class IndustrySMS
{
	private static String operation = "/industrySMS/sendSMS";
	public static String bianliang;
	private static String accountSid = Config.ACCOUNT_SID;
	private static String to;
	private static String smsContent = "【趣吃】您的验证码为{1}，请于10分钟内正确输入，如非本人操作，请忽略此短信。";

	/**
	 * 验证码通知短信
	 */
	
	public static void execute(String s)
	{
		String tmpSmsContent = null;
		Random r=new Random();
		int[] arr= {0,1,2,3,4,5,6,7,8,9};
		String z = "";
		for(int g=0;g<4;g++) {
		 z+=arr[r.nextInt(9)];
		}
		
		bianliang=z;
		System.out.print("验证码是："+bianliang);
		System.out.print("验证码是："+z);
		
	    try{
	      tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");
	      
	      
	    }catch(Exception e){
	      
	    }
	    String url = Config.BASE_URL + operation;
	    String body = "accountSid=" + accountSid + "&to=" + s + "&smsContent=" + tmpSmsContent+"&templateid=982815113" + "&param="+ bianliang
	        + HttpUtil.createCommonParam();

	    // 提交请求
	    String result = HttpUtil.post(url, body);
	    System.out.println("result:" + System.lineSeparator() + result);
	}
}
