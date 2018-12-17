package com.tasty.xietong;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;

public class py {

	public static void main(String[] args){
		
		//输出流部分
		
	/*	//输出缓冲流
		BufferedWriter bos = null;
		try {
			//写自己的文档路径默认eclipse工作目录下
			bos=new BufferedWriter(new FileWriter("D:\\ml-latest-small\\type.csv",true));
			for(int i=10;i<40;i++) {
				for(int j=1;j<60;j++) {
					//生成随机数，测试用的你不要用
					int x=(int)(Math.random()*3000);
					int y=(int)(Math.random()*5+1);	
					//换行
					bos.newLine();
					//写入数据格式看type.csv的第一行
					bos.write(i+"10000000000"+","+x+","+y+".0");
				}
				bos.flush();
			}
			bos.flush();
		} catch (IOException e1) {
			e1.printStackTrace();
		}finally {
			try {
				bos.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		*/
		
		//这是推荐系统的
		
		
		
		//被推荐人手机号
		String a = "13946680120";
		try {
			//写自己的文档路径默认eclipse工作目录下
			String[] arg = new String[] { "python", "D:/CollaborativeFilter.py", a };
			Process proc = Runtime.getRuntime().exec(arg);// 执行py文件
			BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream()));
			String line = null;
			while ((line = in.readLine()) != null) {
				//返回九个推荐文章编号
				System.out.println(line);
			}
			in.close();
			proc.waitFor();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}