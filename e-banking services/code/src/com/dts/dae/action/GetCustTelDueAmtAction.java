package com.dts.dae.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dts.project.dao.ElectricityDAO;
import com.dts.project.dao.TelephoneDAO;
import com.dts.project.model.ElectricityModel;
import com.dts.project.model.TelephoneModel;

public class GetCustTelDueAmtAction extends HttpServlet {

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

		int secuno=Integer.parseInt(request.getParameter("secuno"));
		int typeid=Integer.parseInt(request.getParameter("typeid"));
		int tno=Integer.parseInt(request.getParameter("tno"));
		//int ttimefrmin=Integer.parseInt(request.getParameter("ttimefrmin"));
		//int talktime=Integer.parseInt(request.getParameter("ttime"));
		
		String target="CustPayPhoneBills.jsp?status=Invalid Due Amt";
		TelephoneModel emodel=null;
		try
		{
			
			 
			emodel = new TelephoneDAO().getCustTelDueAmt(secuno,typeid,tno);

			if (emodel!=null){				
		        
				//target = "CustPayPhoneBills.jsp?damt="+emodel.getDueamt()+"&gsecno="+secuno+"&gtypeid="+typeid+"&gtno="+tno+"&gttimefrmin="+ttimefrmin+"&gtalktime="+talktime;
				target = "CustPayPhoneBills.jsp?damt="+emodel.getDueamt()+"&gsecno="+secuno+"&gtypeid="+typeid+"&gtno="+tno;
			
			
			}
			else
				//target = "CustPayPhoneBills.jsp?damt="+0+"&gsecno="+secuno+"&gtypeid="+typeid+"&gtno="+tno+"&gttimefrmin="+ttimefrmin+"&gtalktime="+talktime;
				target = "CustPayPhoneBills.jsp?damt="+0;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher(target);
		rd.forward(request, response);
	}

}
