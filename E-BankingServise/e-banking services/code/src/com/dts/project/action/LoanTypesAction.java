package com.dts.project.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dts.project.dao.LoanDAO;
import com.dts.project.model.LoanModel;

public class LoanTypesAction extends HttpServlet {

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

		
		LoanModel sm=null;	
		//boolean flag=true;
		String status=request.getParameter("submit");
	
	//if(status.equalsIgnoreCase("Add Loan Type")){

	String target="AddNewLoanTypes.jsp?status=Invalid Loan Types Details";
		
		try{	
		sm=new LoanModel();		
		sm.setLoantypename(request.getParameter("loantypename"));
		sm.setIntrestrate(Double.parseDouble(request.getParameter("rate")));
		sm.setPeriods(Integer.parseInt(request.getParameter("period")));		
		sm.setInstlamtpermonth(Double.parseDouble(request.getParameter("instamt")));		
		sm.setNoterms(Integer.parseInt(request.getParameter("terms")));		
		
		boolean flag=new LoanDAO().addLoanTypes(sm);
if(flag)
	target="AddNewLoanTypes.jsp?status=Add Loan Types Is Successfully";
else
	target="AddNewLoanTypes.jsp?status=Add Loan Types Is Fail";

}catch(Exception e){e.printStackTrace();}
RequestDispatcher rd = request.getRequestDispatcher(target);
rd.forward(request,response);


	//}

		
		
	}

}
