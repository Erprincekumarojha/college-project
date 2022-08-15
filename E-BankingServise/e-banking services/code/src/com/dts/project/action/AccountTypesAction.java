package com.dts.project.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dts.project.dao.AccountDAO;
import com.dts.project.dao.CustomerDAO;
import com.dts.project.model.AccountModel;
import com.dts.project.model.CustomerModel;

public class AccountTypesAction extends HttpServlet {

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

		AccountModel sm=null;	
		boolean flag=true;
		String status=request.getParameter("submit");

		
		
		if(status.equalsIgnoreCase("Add Account Type")){

	String target="AddAccountTypes.jsp?status=Invalid Account Types Details";
		
		try{	
		 sm=new AccountModel();
		
		sm.setAcounttypename(request.getParameter("accountypes"));
		sm.setMindeposteamt(Double.parseDouble(request.getParameter("minamt")));
		sm.setPeriods(Integer.parseInt(request.getParameter("period")));		
		sm.setIntrestrate(Double.parseDouble(request.getParameter("rate")));
		sm.setStatus(request.getParameter("status"));		
		
		 flag=new AccountDAO().addAccountTypes(sm);
if(flag)
	target="AddAccountTypes.jsp?status=Add Account Types Is Successfully";
else
	target="AddAccountTypes.jsp?status=Add  Account Types Is Fail";
}catch(Exception e){e.printStackTrace();}
RequestDispatcher rd1 = request.getRequestDispatcher(target);
rd1.forward(request,response);


}

if(status.equalsIgnoreCase("De-Active")){
	String target1="DeActivateAccountTypes.jsp?status=Invalid Account Types Details";
			
   try{	
   sm=new AccountModel();
			
	 int actypeid=Integer.parseInt(request.getParameter("atypeid"));
		     
	  flag=new AccountDAO().setAccountTypeIsDeactive(actypeid);
	    if(flag) 
          target1="DeActivateAccountTypes.jsp?status=Account Type  Deactive Is Successful";
       else
	      target1="DeActivateAccountTypes.jsp?status=Account Type Deactive Is Fail Or Already In Deactive"; 
				         
	}catch(Exception e){e.printStackTrace();}
	RequestDispatcher rd2 = request.getRequestDispatcher(target1);
	rd2.forward(request,response);
	
}


if(status.equalsIgnoreCase("Active")){
	String target2="ActivateAccountTypes.jsp?status=Invalid Account Types Details";
			
   try{	
   sm=new AccountModel();
			
	 int actypeid=Integer.parseInt(request.getParameter("atypeid"));
		     
	   flag=new AccountDAO().setAccountTypeIsActive(actypeid);
	    if(flag) 
          target2="ActivateAccountTypes.jsp?status=Account Type  Active Is Successful";
       else
	      target2="ActivateAccountTypes.jsp?status=Account Type Active Is Fail Or Already In Active"; 
				         
	}catch(Exception e){e.printStackTrace();}
	RequestDispatcher rd3 = request.getRequestDispatcher(target2);
	rd3.forward(request,response);
	
}

}

}
