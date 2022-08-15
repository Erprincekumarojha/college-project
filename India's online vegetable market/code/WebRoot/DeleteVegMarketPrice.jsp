<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.aoc.dao.VegMarketPriceDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'DeleteVegMarketPrice.jsp' starting page</title>
   </head>

	<body>
		<%
			String key = request.getParameter("key");
			String target = "DispalyMessage.jsp?status=Delete inforamtion failed  !!!!!";
			boolean f = false;
			f = new VegMarketPriceDAO().deleteVegPriceInfoByVMPID(Integer.parseInt(key.trim()));
			if (f == true) {
				target = "DispalyMessage.jsp?status=Inforamtion deleted successfully";
			} else {
				target = "DispalyMessage.jsp?status=Delete inforamtion failed  !!!!!";
			}
			RequestDispatcher rd = request.getRequestDispatcher(target);
			rd.forward(request, response);
			System.out.println(key);
		%>
	</body>
</html>
