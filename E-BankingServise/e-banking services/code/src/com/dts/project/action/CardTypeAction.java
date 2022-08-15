package com.dts.project.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dts.project.dao.AccountDAO;
import com.dts.project.dao.CardDAO;
import com.dts.project.model.AccountModel;
import com.dts.project.model.CardModel;

public class CardTypeAction extends HttpServlet {

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

		CardModel sm=null;	
		boolean flag=true;
		String status=request.getParameter("submit");

		
		
		if(status.equalsIgnoreCase("Add Card Type")){

	String target="AddCartTypes.jsp?status=Invalid Cart Types Details";
		
		try{	
		 sm=new CardModel();
		
		sm.setCardtypename(request.getParameter("ctypename"));
		sm.setMinbal(Double.parseDouble(request.getParameter("mnbal")));
				
		
		 flag=new CardDAO().addCardTypes(sm);
if(flag)
	target="AddCartTypes.jsp?status=Add Cart Type Is Successfully";
else
	target="AddCartTypes.jsp?status=Add Cart Type Is Fail";
}catch(Exception e){e.printStackTrace();}
RequestDispatcher rd1 = request.getRequestDispatcher(target);
rd1.forward(request,response);


}
		
		
		
		if(status.equalsIgnoreCase("Modify Card Type Details")){

			String target="ViewAllCartTypes.jsp?status=Invalid Cart Types Details";
				
				try{	
				 sm=new CardModel();
				
				sm.setCardtypeid(Integer.parseInt(request.getParameter("crtypid")));
				sm.setMinbal(Double.parseDouble(request.getParameter("minamt")));
				sm.setStatus(request.getParameter("status"));		
				
				 flag=new CardDAO().ModifyPerticularCardTypes(sm);
		if(flag)
			target="ViewAllCartTypes.jsp?status=View Cart Type Is Successfully";
		else
			target="ViewAllCartTypes.jsp?status=View Cart Type Is Fail";
		}catch(Exception e){e.printStackTrace();}
		RequestDispatcher rd1 = request.getRequestDispatcher(target);
		rd1.forward(request,response);


		}
		
		
		
		
		if(status.equalsIgnoreCase("Apply For Card")){

			String target="ApplyCustForNewCard.jsp?status=Invalid Cart Types Details";
				
				try{	
				 sm=new CardModel();				
				sm.setCardtypeid(Integer.parseInt(request.getParameter("cardtype")));
				sm.setCustid(Integer.parseInt(request.getParameter("custid")));
				sm.setCustaccno(Integer.parseInt(request.getParameter("accno")));
				sm.setApplydate(request.getParameter("apdate"));		
				
				 flag=new CardDAO().CustApplyForNewCardTypes(sm);
		if(flag)
			target="ApplyCustForNewCard.jsp?status=Apply for Cart Type Is Successfully";
		else
			target="ApplyCustForNewCard.jsp?status=Apply for Cart Type Is Fail";
		}catch(Exception e){e.printStackTrace();}
		RequestDispatcher rd1 = request.getRequestDispatcher(target);
		rd1.forward(request,response);
		}
		
		
		
	}

}
