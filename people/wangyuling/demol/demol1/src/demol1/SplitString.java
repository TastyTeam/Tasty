package demol1;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.script.ScriptException;

import demol2.GetJs;
/**
 * @date 2018年12月9日 下午4:35:02 
 * @author 王玉玲
 * @desc用于字符串的切割
*/

public class SplitString {
	
	
	public static void main(String args[]) {
		//字符串直接判断相同，检验密码是否一致
		String s="abc";
		String b="abc";
		if(s==b) {
			System.out.println("Hello world");
		}
		String path=Student.class.getClass().getResource("/").getPath();
		System.out.println(path);
		Student s1=new Student();
		String path1=System.getProperty("user.dir");
		System.out.println(path1);
		System.out.println(s1);
		String a="0星";
		System.out.println(a.substring(0,1));
		GetJs jsf=new GetJs();
		try {
			jsf.testScriptInterface();
		} catch (ScriptException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		Map<String,String> listfood =new HashMap<String,String>(0);
	
		String foodMain="盐:适量;麻椒:适量;cai:dksfjds;";
		String[] foods=foodMain.split(";");
		for (int i=0;i<foods.length;i++) {	
			String foodmainsplit=foods[i];
		String[] foodsplit=foodmainsplit.split(":");
		listfood.put(foodsplit[0], foodsplit[1]);
		}
   Set<Entry<String, String>> set=listfood.entrySet();

    Iterator<Entry<String, String>> iterator=set.iterator();
    while(iterator.hasNext()){
    Map.Entry mapEntry=(Map.Entry)iterator.next();
    System.out.println(mapEntry.getKey()+"--------"+mapEntry.getValue());
 

			
		
	
		
	}
		
	}
	
}
