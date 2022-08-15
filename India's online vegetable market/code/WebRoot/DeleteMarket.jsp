<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.aoc.dao.VegDAO"%>
<%@page import="com.dts.aoc.dao.MarketDAO"%>
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
		<title>My JSP 'DeleteMarket.jsp' starting page</title>
	</head>
	<body>
		<%
			String key = request.getParameter("key");
			String target = "ViewMarketAdmin.jsp?status=Delete market inforamtion failed  !!!!!";
			boolean f = false;
			f = new MarketDAO().deleteMarketInfo(Integer.parseInt(key.trim()));
			if (f == true) {
			new VegMarketPriceDAO().deleteVegPriceInfoByMarketID(Integer.parseInt(key.trim()));
				target = "ViewMarketAdmin.jsp?status=Market inforamtion deleted successfully";
			} else {
				target = "ViewMarketAdmin.jsp?status=Delete market inforamtion failed  !!!!!";
			}

			RequestDispatcher rd = request.getRequestDispatcher(target);
			rd.forward(request, response);
			System.out.println(key);
		%>
	</body>
</html>
