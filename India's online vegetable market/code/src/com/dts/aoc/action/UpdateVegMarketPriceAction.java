package com.dts.aoc.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sun.security.x509.AVA;

import com.dts.aoc.bl.MarketOpenDay;
import com.dts.aoc.dao.VegMarketPriceDAO;
import com.dts.aoc.dto.VegMarketPriceDTO;

public class UpdateVegMarketPriceAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		VegMarketPriceDTO obj = new VegMarketPriceDTO();
		String target = "DispalyMessage.jsp?status=Update inforamtion failed  !!!!!";
		String vmp = request.getParameter("vmp");
		String vavailable = request.getParameter("vavailable");
		String cost = request.getParameter("cost");
		String oldcost = request.getParameter("oldcost");
		String per = request.getParameter("per");
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		java.util.Date date = Calendar.getInstance().getTime();
		String updateDate = dateFormat.format(date);

		DateFormat timeFormat = new SimpleDateFormat("HH:mm");
		java.util.Date time = Calendar.getInstance().getTime();
		String updateTime = timeFormat.format(time);
		//
		try {

			if (vavailable.length() > 0 && vmp.length() > 0 && per.length() > 0) {
				//

				obj.setVmpID(Integer.parseInt(vmp.trim()));
				if(vavailable.equalsIgnoreCase("y")){				
				obj.setVegCostPer(per);
				oldcost=oldcost.trim();
				if(oldcost.equalsIgnoreCase("--")){
					oldcost="0";
				}
				oldcost=oldcost.trim();
				obj.setVegCost(cost);
				obj.setVegCostStatus(MarketOpenDay.getVegetablePriceStatus(cost, oldcost));
				}else{					
					obj.setVegCost("--");
					obj.setVegCostPer("--");
					obj.setVegCostStatus("--");
				}
				obj.setVegCostTime(updateTime);
				obj.setVegCostDate(updateDate);
				obj.setVegAvailable(vavailable);
				 boolean f = false; f = new	 VegMarketPriceDAO().updateVegPriceInfoByVMPID(obj); 
				 if (f == true) {
				  target = "DispalyMessage.jsp?status= inforamtion added successfully";
				 } else { 
					 target = "DispalyMessage.jsp?status=Failed  !!!!!";
				  }				 

			} else {
				target = "DispalyMessage.jsp?status=Please enter all inforamtion";
			}

		} catch (Exception exception) {
			System.err.println(exception);
			target = "DispalyMessage.jsp?status=Update inforamtion failed  !!!!!";
		}
		RequestDispatcher rd = request.getRequestDispatcher(target);
		rd.forward(request, response);

		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		doGet(request, response);
		out.flush();
		out.close();
	}
}
