package com.tasty.entity;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @date 2018��12��17��
 * @author ����
*/
public class Time {
	
	public String time(Date d) {
		return new SimpleDateFormat("y��MM��dd��-HH:mm:ss").format(d);
	}

}
