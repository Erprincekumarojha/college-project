package com.dts.project.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dts.project.dao.TelephoneDAO;
import com.dts.project.model.TelephoneModel;

public class TelephoneAction extends HttpServlet {

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

		TelephoneModel  sm=null;
		String status=request.getParameter("submit");
				if(status.equalsIgnoreCase("Add Telephone Types")){
				String target="AddTelephoneTypes.jsp?status=Invalid Telephone Details";
				
				try{
					sm=new TelephoneModel();
			
				sm.setTeltypename(request.getParameter("ttypename"));		
				sm.setAmt4min(Double.parseDouble(request.getParameter("amtformin")));
				sm.setOthertaxes(Double.parseDouble(request.getParameter("taxes")));		
				sm.setTelissuedate(request.getParameter("stdate"));
				
				boolean flag=new TelephoneDAO().addTelTypeDetails(sm);
		if(flag)
			target="AddTelephoneTypes.jsp?status=Add Tele Phone Details Is Successfully";
		else
			target="AddTelephoneTypes.jsp?status=Add Tele Phone Details  Is Fail";
		}catch(Exception e){e.printStackTrace();}
		RequestDispatcher rd = request.getRequestDispatcher(target);
		rd.forward(request,response);

				}
				
				
				if(status.equalsIgnoreCase("PayBill")){
					String target="CustPayPhoneBills.jsp?status=Invalid Phone Bill Details";
					
					try{
				
						sm=new TelephoneModel();
					sm.setTeltypeid(Integer.parseInt(request.getParameter("ttypeid")));
					sm.setTelphno(Integer.parseInt(request.getParameter("tno")));
					sm.setCustid(Integer.parseInt(request.getParameter("custno")));
					sm.setTalktime(Integer.parseInt(request.getParameter("talktime")));
					sm.setDueamt(Double.parseDouble(request.getParameter("dueamt")));
					sm.setBilisuedate(request.getParameter("stdate"));
					sm.setAmt2pay(Double.parseDouble(request.getParameter("payamt")));
					boolean flag=new TelephoneDAO().AssignCustTelBillDetails(sm);
			if(flag)
				target="CustPayPhoneBills.jsp?status=Add  PhoneBills Details Is Successfully";
			else
				target="CustPayPhoneBills.jsp?status=Add PhoneBills Details  Is Fail";
			}catch(Exception e){e.printStackTrace();}
			RequestDispatcher rd = request.getRequestDispatcher(target);
			rd.forward(request,response);

					}
				
				
				
				if(status.equalsIgnoreCase("Paying")){
					String target="ViewCustAllPhoneDetails.jsp?status=Invalid  Paying Phone Details";
					
					try{
						sm=new TelephoneModel();
						sm.setTeltypeid(Integer.parseInt(request.getParameter("typeid")));
						sm.setTelphno(Integer.parseInt(request.getParameter("phno")));
						sm.setCustid(Integer.parseInt(request.getParameter("ccustid")));
						sm.setTalktime(Integer.parseInt(request.getParameter("ttime")));
						sm.setDueamt(Double.parseDouble(request.getParameter("dueamt")));
						sm.setBilisuedate(request.getParameter("bilisudate"));
						sm.setAmt2pay(Double.parseDouble(request.getParameter("amounttopay")));
						sm.setBilpayeddate(request.getParameter("bilpayingdate"));
						sm.setPaiedamt(Double.parseDouble(request.getParameter("payedamt")));
						sm.setStatus(request.getParameter("status"));
						sm.setTxid(Integer.parseInt(request.getParameter("txid")));
						
					boolean flag=new TelephoneDAO().UpdateCustPayingBillDetails(sm);
			if(flag)
				target="ViewCustAllPhoneDetails.jsp?status=Paying Phone Details Is Successfully";
			else
				target="ViewCustAllPhoneDetails.jsp?status=Paying Phone Details  Is Fail";
			}catch(Exception e){e.printStackTrace();}
			RequestDispatcher rd = request.getRequestDispatcher(target);
			rd.forward(request,response);

					}
	}

}
