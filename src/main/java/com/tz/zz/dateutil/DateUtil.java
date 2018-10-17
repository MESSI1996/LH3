package com.tz.zz.dateutil;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	public static Date StringToDate(String riqi) {
		Date  date=null;
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		try {
			date=format.parse(riqi);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return  date;	
	}
	
	public static String DateToString(Date date ) {
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		String string=format.format(date);
		return string;
	}
}
