package com.dts.aoc.bl;

import com.dts.aoc.dto.MarketDTO;

public class MarketOpenDay {

	public static String getVegetablePriceStatus(String newPrice, String oldPrice) {

		double dnewPrice = Double.parseDouble(newPrice.trim());
		double doldPrice = Double.parseDouble(oldPrice.trim());
		String val = "";
		if (dnewPrice > doldPrice) {
			val = "i";
		} else if (dnewPrice == doldPrice) {
			val = "e";
		} else if (dnewPrice < doldPrice) {
			val = "d";
		}
		return val;
	}

	public static int getMarketOpenDayByMarketID(int mid) {
		return 1;
	}

	public MarketDTO setMarketOpenDay(String[] openday) {
		MarketDTO obj = new MarketDTO();
		int su = 0;
		int mo = 0;
		int tu = 0;
		int we = 0;
		int th = 0;
		int fr = 0;
		int sa = 0;

		for (int i = 0; i < openday.length; i++) {
			int val = Integer.parseInt(openday[i]);
			if (val == 1) {
				su = 1;
			} else if (val == 2) {
				mo = 1;
			} else if (val == 3) {
				tu = 1;
			} else if (val == 4) {
				we = 1;
			} else if (val == 5) {
				th = 1;
			} else if (val == 6) {
				fr = 1;
			} else if (val == 7) {
				sa = 1;
			}
		}

		obj.setSu(su);
		obj.setMo(mo);
		obj.setTu(tu);
		obj.setTh(th);
		obj.setWe(we);
		obj.setFr(fr);
		obj.setSa(sa);
		return obj;

	}
}
