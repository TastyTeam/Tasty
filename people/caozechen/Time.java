package com.tasty.entity;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @date 2018年12月17日
 * @author 曹泽辰
*/
public class Time {
	
	public String time(Date d) {
		return new SimpleDateFormat("y年MM月dd日-HH:mm:ss").format(d);
	}

}
