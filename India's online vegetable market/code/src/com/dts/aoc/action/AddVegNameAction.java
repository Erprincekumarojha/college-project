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
import com.dts.aoc.dao.VegDAO;
import com.dts.aoc.dto.MarketDTO;
import com.dts.aoc.dto.VegDTO;

public class AddVegNameAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String uid = (String) session.getAttribute("userid");
		VegDTO obj = new VegDTO();
		String target = "AddVegName.jsp?status=Add veg inforamtion failed  !!!!!";
		String vname = request.getParameter("vname");
		String pic = request.getParameter("pic");

		try {

			if (vname.length() > 0) {
				if (pic.length() > 0) {

					obj.setVegName(vname);
					obj.setVegPic(pic);
					obj.setLoginID(uid);
					boolean f = false;
					f = new VegDAO().addVegInfo(obj);
					if (f == true) {
						target = "AddVegName.jsp?status=Veg inforamtion added successfully";
					} else {
						target = "AddVegName.jsp?status=Registration Failed  !!!!!";
					}

				} else {
					target = "AddVegName.jsp?status=Upload veg picture";
				}
			} else {
				target = "AddVegName.jsp?status=Enter veg name";
			}

		} catch (Exception exception) {
			System.err.println(exception);
			target = "AddVegName.jsp?status=Add veg inforamtion failed  !!!!!";
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
