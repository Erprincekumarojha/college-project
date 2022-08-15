package com.dts.project.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dts.project.dao.ElectricityDAO;
import com.dts.project.model.ElectricityModel;

public class ElectricityAction extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

ElectricityModel  sm=new ElectricityModel();
		
		String target="AddElectricityBillDetails.jsp?status=Invalid Electricity Details";
		
		try{
	
	
		sm.setScno(Integer.parseInt(request.getParameter("sno")));		
		sm.setCustid(Integer.parseInt(request.getParameter("ccustid")));
		sm.setPsnrreading(Integer.parseInt(request.getParameter("preading")));
		sm.setCostperunit(Double.parseDouble(request.getParameter("cost")));
		sm.setAmt2pay(Double.parseDouble(request.getParameter("amt2pay")));
		sm.setDueamt(Double.parseDouble(request.getParameter("dueamt")));
		sm.setPayedamt(Double.parseDouble(request.getParameter("payamt")));
		sm.setBillisuedate(request.getParameter("issuedate"));
		sm.setBillpaydate(request.getParameter("paydate"));
		sm.setElectrictype(request.getParameter("etype"));
		
		boolean flag=new ElectricityDAO().addElectricBillDetails(sm);
if(flag)
	target="AddElectricityBillDetails.jsp?status=Add Electric Details Is Successfully";
else
	target="AddElectricityBillDetails.jsp?status=Add Electric Details  Is Fail";
}catch(Exception e){e.printStackTrace();}
RequestDispatcher rd = request.getRequestDispatcher(target);
rd.forward(request,response);
	}

}
