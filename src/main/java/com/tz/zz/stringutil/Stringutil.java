package com.tz.zz.stringutil;

public class Stringutil {
	public static boolean isnull(String str) {
		return str==null||"".equalsIgnoreCase(str)||str.length()==0||str.matches("\\s*");
	}
	public static boolean isnotnull(String str) {
		return !isnull(str);
	}
	public static boolean isnnotull( int ad) {
		String aa=String.valueOf(ad);
		return aa==null||"".equalsIgnoreCase(aa)||aa.length()==0||aa.matches("\\s*");
	}
}
