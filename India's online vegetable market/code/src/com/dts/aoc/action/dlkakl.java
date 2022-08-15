package com.dts.aoc.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class dlkakl {
	public static void main(String[] args) {
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		java.util.Date date = Calendar.getInstance().getTime();
		String updateDate = dateFormat.format(date);

		DateFormat timeFormat = new SimpleDateFormat("HH:mm");
		java.util.Date time = Calendar.getInstance().getTime();
		String updateTime = timeFormat.format(time);

		System.out.println(updateDate + "         " + updateTime);
	}
}
