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

import com.dts.aoc.dao.VegDAO;
import com.dts.aoc.dao.VegMarketPriceDAO;
import com.dts.aoc.dto.VegDTO;
import com.dts.aoc.dto.VegMarketPriceDTO;

public class AddVegPriceByMarketAction  extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String uid = (String) session.getAttribute("userid");
		VegMarketPriceDTO obj = new VegMarketPriceDTO();
		String target = "AddVegPriceByMarket.jsp?status=Add inforamtion failed  !!!!!";
		String mname = request.getParameter("mname");
		String vname = request.getParameter("vname");		
		String cost = request.getParameter("cost");
		String per = request.getParameter("per");
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		java.util.Date date = Calendar.getInstance().getTime();
		String updateDate = dateFormat.format(date);

		DateFormat timeFormat = new SimpleDateFormat("HH:mm");
		java.util.Date time = Calendar.getInstance().getTime();
		String updateTime = timeFormat.format(time);
		try {

			if (mname.length() > 0&&vname.length()>0&&cost.length()>0&&per.length()>0) {
					obj.setMarketID(Integer.parseInt(mname.trim()));
					obj.setVegID(Integer.parseInt(vname.trim()));
					obj.setLoginID(uid);					
					obj.setVegCost(cost);
					obj.setVegCostPer(per);
					obj.setVegCostStatus("e");
					obj.setVegCostTime(updateTime);
					obj.setVegCostDate(updateDate);
					obj.setVegAvailable("y");
					if(new VegMarketPriceDAO().checkVegPriceByMarketInfoAvali(obj)){						
						target = "AddVegPriceByMarket.jsp?status=Inforamtion is present.";
					}else{
					boolean f = false;
					f = new VegMarketPriceDAO().addVegPriceInfo(obj);
					if (f == true) {
						target = "AddVegPriceByMarket.jsp?status= inforamtion added successfully";
					} else {
						target = "AddVegPriceByMarket.jsp?status=Failed  !!!!!";
					}
					}
				
			} else {
				target = "AddVegPriceByMarket.jsp?status=Please enter all inforamtion";
			}

		} catch (Exception exception) {
			System.err.println(exception);
			target = "AddVegPriceByMarket.jsp?status=Add inforamtion failed  !!!!!";
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
