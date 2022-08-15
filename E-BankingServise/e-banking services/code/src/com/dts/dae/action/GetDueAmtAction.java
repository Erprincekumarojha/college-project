package com.dts.dae.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dts.project.dao.ElectricityDAO;
import com.dts.project.model.ElectricityModel;


public class GetDueAmtAction extends HttpServlet {

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

		int sno=Integer.parseInt(request.getParameter("sno"));
		String target="AddElectricityBillDetails.jsp?snoo=Invalid Due Amt";
		ElectricityModel emodel=null;
		try
		{
			
			 
			emodel = new ElectricityDAO().getElectricityBillDueAmt(sno);

			if (emodel!=null){				
		        
				target = "AddElectricityBillDetails.jsp?damt="+emodel.getDueamt()+"&prereading="+emodel.getPsnrreading()+"&ssno="+sno;
			}
			else
				target = "AddElectricityBillDetails.jsp?damt="+0+"&prereading="+0+"&ssno="+sno;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher(target);
		rd.forward(request, response);
	}

}
