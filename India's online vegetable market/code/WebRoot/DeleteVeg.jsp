<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.aoc.dao.VegDAO"%>
<%@page import="com.dts.aoc.dao.VegMarketPriceDAO"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'DeleteVeg.jsp' starting page</title>
	</head>

	<body>
		<%
			String key = request.getParameter("key");
			String target = "ViewVegAdmin.jsp?status=Delete veg inforamtion failed  !!!!!";
			boolean f = false;
			System.out.println(key);
			f = new VegDAO().deleteVegInfo(Integer.parseInt(key.trim()));
			if (f == true) {
			new VegMarketPriceDAO().deleteVegPriceInfoByVegID(Integer.parseInt(key.trim()));
			target = "ViewVegAdmin.jsp?status=Veg inforamtion deleted successfully";
			} else {
				target = "ViewVegAdmin.jsp?status=Delete veg inforamtion failed  !!!!!";
			}

			RequestDispatcher rd = request.getRequestDispatcher(target);
			rd.forward(request, response);

			System.out.println(key);
		%>
	</body>
</html>
