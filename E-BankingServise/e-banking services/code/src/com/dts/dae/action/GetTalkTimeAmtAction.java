package com.dts.dae.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dts.project.dao.TelephoneDAO;
import com.dts.project.model.TelephoneModel;

public class GetTalkTimeAmtAction extends HttpServlet {

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

	String target="CustPayPhoneBills.jsp?status=Invalid Talk Time  Details";
	TelephoneModel  emodel=null;
	
	HttpSession session=request.getSession();
try{
	
	int typeid=Integer.parseInt(request.getParameter("ttypeid"));
	System.out.println("-----GetInsAmtAction-------typeid--------->"+typeid);
	
	emodel=new TelephoneDAO().getTelTalkTimeAmt(typeid);
	
session.setAttribute("talktimeamtdtls", emodel);
System.out.println("typeid------------------->"+emodel.getTeltypeid());
System.out.println("typename----------------->"+emodel.getTeltypename());
System.out.println("Amount for minimum-------------->"+emodel.getAmt4min());
if(emodel!=null)
	
	 target="CustPayPhoneBills.jsp?amtformin="+emodel.getAmt4min()+"&typeid="+emodel.getTeltypeid()+"&typename="+emodel.getTeltypename();
else
	 target="CustPayPhoneBills.jsp?amtformin="+emodel.getAmt4min()+"&typeid="+emodel.getTeltypeid()+"&typename="+emodel.getTeltypename();
}catch(Exception e){e.printStackTrace();}

RequestDispatcher rd = request.getRequestDispatcher(target);
rd.forward(request,response);
}

}
