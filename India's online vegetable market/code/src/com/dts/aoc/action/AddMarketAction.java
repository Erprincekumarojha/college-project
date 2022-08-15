package com.dts.aoc.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dts.aoc.bl.MarketOpenDay;
import com.dts.aoc.dao.MarketDAO;
import com.dts.aoc.dto.MarketDTO;
import com.dts.dae.dao.ProfileDAO;
import com.dts.dae.dto.RegistrationBean;

public class AddMarketAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String uid = (String) session.getAttribute("userid");
		MarketDTO obj = new MarketDTO();
		String target = "AddMarket.jsp?status=Add market inforamtion failed  !!!!!";
		String mname = request.getParameter("mname");
		String maddress = request.getParameter("maddress");

		try {

			String[] mopenday = request.getParameterValues("checkbox");

			if (mname.length() > 0) {
				if (maddress.length() > 0) {
					if (mopenday.length > 0) {
						obj = new MarketOpenDay().setMarketOpenDay(mopenday);
						obj.setMarketName(mname);
						obj.setMarketAdd(maddress);
						obj.setLoginID(uid);
						boolean f = false;
						f = new MarketDAO().addMarketInfo(obj);
						if (f == true) {
							target = "AddMarket.jsp?status=Market inforamtion added successfully";
						} else {
							target = "AddMarket.jsp?status=Registration Failed  !!!!!";
						}
					} else {
						target = "AddMarket.jsp?status=Select atleast one day";
					}
				} else {
					target = "AddMarket.jsp?status=Enter maket address";
				}
			} else {
				target = "AddMarket.jsp?status=Enter maket name";
			}

		} catch (NullPointerException nullPointerException) {
			System.err.println(nullPointerException);
			target = "AddMarket.jsp?status=Select atleast one day";
		} catch (Exception exception) {
			System.err.println(exception);
			target = "AddMarket.jsp?status=Add market inforamtion failed  !!!!!";
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
