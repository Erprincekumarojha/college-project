package com.dts.dae.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dts.core.util.CoreHash;
import com.dts.project.dao.TransferDAO;
import com.dts.project.model.TransferModel;

public class ChekCustPinAction extends HttpServlet {

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
		String target="WithdrawCustAmount.jsp?status=Invalid Pin Number";
		TransferModel  tm=null,tm1=null;
			String pinno=request.getParameter("pinno");	
			int cid=Integer.parseInt(request.getParameter("custid"));
			try{
			tm=new TransferModel();
			tm.setCustid(cid);
			tm.setPinno(pinno);
			tm1=new TransferDAO().getPinCustDetails(tm);
			System.out.println("-----------in CheckCustPinAction-----------");
		if(tm1!=null)
			target="WithdrawCustAmount.jsp?pin="+tm1.getPinno()+"&custaccno="+tm1.getFromaccno()+"&ccid="+cid;	
		else
			 target="WithdrawCustAmount.jsp";	
	}
catch (Exception e)
{
	e.printStackTrace();
}
RequestDispatcher rd = request.getRequestDispatcher(target);
rd.forward(request, response);

	}

}
