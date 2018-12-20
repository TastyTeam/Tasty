package com.tasty.entity;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Time {
	
	public String time(Date d) {
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(d);
	}

}
