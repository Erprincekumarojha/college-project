<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.kws.mtrs.dao.BookingDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AcceptMovieTicketRequest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
      String status=request.getParameter("status");
      if(status.equals("pending")){
         int bid=Integer.parseInt(request.getParameter("id"));
         BookingDAO bookingDAO=new BookingDAO();
         boolean flag=bookingDAO.rejectMovieRequest(bid);
         if(flag)
             response.sendRedirect("ViewMovieTicketRequests.jsp?status=rejected");
         else
            response.sendRedirect("ViewMovieTicketRequests.jsp?status=rejecting failure");
      }else{
    
       response.sendRedirect("ViewMovieTicketRequests.jsp?status=process already completed,not required now");
     }
     %>
  </body>
</html>
