package com.dts.project.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dts.project.dao.CardDAO;
import com.dts.project.dao.TransferDAO;
import com.dts.project.model.CardModel;
import com.dts.project.model.TransferModel;

public class TransferAction extends HttpServlet {

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
		TransferModel sm=null;	
		boolean flag=true;
		String status=request.getParameter("submit");

		
		
		if(status.equalsIgnoreCase("Deposite Amount")){

	String target="DepositeCustAmount.jsp?status=Invalid Deposite Customer Amount Details";
		
		try{	
		 sm=new TransferModel();
		
		sm.setCustid(Integer.parseInt(request.getParameter("custid")));
		sm.setFromaccno(Integer.parseInt(request.getParameter("accno")));
		sm.setTransamt(Double.parseDouble(request.getParameter("depositeamt")));
				
		
		 flag=new TransferDAO().addCustDepositeAmount(sm);
if(flag)
	target="DepositeCustAmount.jsp?status=Deposite Customer Amount Is Successfully";
else
	target="DepositeCustAmount.jsp?status=Deposite Customer Amount Is Fail";
}catch(Exception e){e.printStackTrace();}
RequestDispatcher rd1 = request.getRequestDispatcher(target);
rd1.forward(request,response);


}
		
		
		if(status.equalsIgnoreCase("Withdraw Amount")){

			String target="WithdrawCustAmount.jsp?status=Invalid Withdraw Customer Amount Details";
				
				try{	
				 sm=new TransferModel();
				
				sm.setCustid(Integer.parseInt(request.getParameter("custid")));
				sm.setFromaccno(Integer.parseInt(request.getParameter("accno")));
				sm.setTransamt(Double.parseDouble(request.getParameter("withdrawamt")));
				sm.setPinno(request.getParameter("pinno"));		
				
				 int ymwithdrawdtls=new TransferDAO().withDrawCustAmount(sm);
		if(flag)
			target="WithdrawCustAmount.jsp?status=Withdraw Customer Amount Is Successfully";
		else
			target="WithdrawCustAmount.jsp?status=Withdraw Customer Amount Is Fail or Invalid Pin Number ";
		}catch(Exception e){e.printStackTrace();}
		RequestDispatcher rd1 = request.getRequestDispatcher(target);
		rd1.forward(request,response);


		}
		
		
		if(status.equalsIgnoreCase("Transfer Amount")){

			String target="TxAmtFromCustAcnoToDstCustAcno.jsp?status=Invalid  Transfer Amount Details";
				
				try{	
				 sm=new TransferModel();
				
				sm.setCustid(Integer.parseInt(request.getParameter("custid")));
				sm.setFromaccno(Integer.parseInt(request.getParameter("saccno")));
				sm.setToaccno(Integer.parseInt(request.getParameter("daccno")));
				sm.setTransamt(Double.parseDouble(request.getParameter("transferamt")));
				sm.setPinno(request.getParameter("pinno"));		
				
				 int transferamtcount=new TransferDAO().TransAmtFromAcnoToDAcno(sm);
		if((flag=true) && (transferamtcount==1))
			target="TxAmtFromCustAcnoToDstCustAcno.jsp?status=Transfer Customer Amount Is Successfully";
		else
			target="TxAmtFromCustAcnoToDstCustAcno.jsp?status=Transfer Customer Amount Is Fail Or Invalid Pin Number";
		}catch(Exception e){e.printStackTrace();}
		RequestDispatcher rd1 = request.getRequestDispatcher(target);
		rd1.forward(request,response);


		}
		
	}

}
