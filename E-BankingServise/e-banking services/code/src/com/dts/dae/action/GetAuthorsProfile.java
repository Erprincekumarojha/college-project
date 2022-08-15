package com.dts.dae.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dts.pro.bean.AuthorsBean;



public class GetAuthorsProfile extends HttpServlet {

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
	public void doPost(HttpServletRequest requestObj, HttpServletResponse responseObj)
			throws ServletException, IOException {
		 responseObj.setContentType("text/xml"); 
         
	        responseObj.setHeader("Cache-Control", "no-cache"); 
	         
	        //get the PrintWriter object to write the html page 
	        PrintWriter writer = responseObj.getWriter(); 
	         
	        //get parameters store into the hashmap 
	        HashMap paramsMap = new HashMap(); 
	        Enumeration paramEnum = requestObj.getParameterNames(); 
	        while(paramEnum.hasMoreElements()) 
	        { 
	            String paramName = (String)(paramEnum.nextElement()); 
	            paramsMap.put(paramName, requestObj.getParameter(paramName)); 
	        } 
	        //get the author name passed 
	        String authorName= (String)paramsMap.get("author"); 
	         
	        //creating the author bean 
	        AuthorsBean authBean = new AuthorsBean(); 
	         
	        //get the author profile by quering the AuthorsBean by passing author name 
	         writer.println("<Profile><![CDATA[" + authBean.getAuthorProfile() + "]]></Profile>"); 
	         
	        //close the write 
	        writer.close();  
		
	}

}
