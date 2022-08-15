package com.dts.project.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dts.project.dao.CustomerDAO;
import com.dts.project.model.AccountModel;
import com.dts.project.model.CustomerModel;
import com.dts.project.model.EmpModel;

public class AddCustomerAction extends HttpServlet {

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
String target="AddCustomer.jsp?status=Invalid Customer Registration";
String status=request.getParameter("submit");
boolean flag=false;
CustomerModel  sm=null;
	if(status.equalsIgnoreCase("Submit")){		
		try{
	
	    AccountModel  am=new AccountModel();
		 sm=new CustomerModel();
		
		String day=request.getParameter("day");
		String month=request.getParameter("month");
		String year=request.getParameter("year");
		String bd=day+"-"+month+"-"+year;
		
		
		String jday=request.getParameter("jday");
		String jmonth=request.getParameter("jmonth");
		String jyear=request.getParameter("jyear");
		String jbd=jday+"-"+jmonth+"-"+jyear;
		
		sm.setCustfname(request.getParameter("firstname"));
		sm.setCustmname(request.getParameter("middlename"));
		sm.setCustlname(request.getParameter("lastname"));		
		sm.setDob(bd);
		sm.setDoj(request.getParameter("rdate"));
		sm.setAddress(request.getParameter("addres"));
		sm.setAdrsprof(request.getParameter("addressprof"));
		//sm.setCustpin(request.getParameter("pin"));
		sm.setCustphoto(request.getParameter("photo"));		
		sm.setGender(request.getParameter("gender"));	
		sm.setEmailid(request.getParameter("emailid"));
		sm.setPhno(request.getParameter("phno"));
		sm.setMstatus(request.getParameter("mstatus"));
		sm.setDeptid(Integer.parseInt(request.getParameter("deptname")));
		sm.setDesigid(Integer.parseInt(request.getParameter("designame")));
		sm.setQualid(Integer.parseInt(request.getParameter("qualname")));
		
		am.setAcountypeid(Integer.parseInt(request.getParameter("acctype")));
		
		am.setApplydate(request.getParameter("apdate"));
		am.setNomineename(request.getParameter("nomineename"));
		

		System.out.println("----------"+request.getParameter("acctype"));
		System.out.println("----------"+request.getParameter("designame"));
		System.out.println("----------"+request.getParameter("qualname"));
		
		sm=new CustomerDAO().addCustomerProfile(sm,am);
if(sm!=null)
	target="AddCustomer.jsp?status=Registration Is Successfully And Wait for Admin  Processing&accno="+sm.getAccno()+"&uname="+sm.getCustuname()+"&upass="+sm.getCustpass();
else
	target="AddCustomer.jsp?status=Customer Registration Is Fail";
}catch(Exception e){e.printStackTrace();}
RequestDispatcher rd = request.getRequestDispatcher(target);
rd.forward(request,response);
	
	}


	
	if(status.equalsIgnoreCase("Update")){		
		
		target="ViewCustomerProfile.jsp?status=Invalid ";
		try{
	
	   
		 sm=new CustomerModel();		
		sm.setCustid(Integer.parseInt(request.getParameter("cid")));	
		sm.setAddress(request.getParameter("addrs"));
		sm.setAdrsprof(request.getParameter("addrsprof"));		
		sm.setCustphoto(request.getParameter("photo"));			
		sm.setEmailid(request.getParameter("email"));
		sm.setPhno(request.getParameter("phno"));
		sm.setMstatus(request.getParameter("mstatus"));	
		
		flag=new CustomerDAO().UpdateCustomerProfile(sm);
		
if(flag)
	target="ViewCustomerProfile.jsp?status=Modify Customer Details Are Successfully ";
else
	target="ViewCustomerProfile.jsp?status=Modify Customer Details  Is Fail";
}catch(Exception e){e.printStackTrace();}
RequestDispatcher rd = request.getRequestDispatcher(target);
rd.forward(request,response);
	
	}


	}

}
