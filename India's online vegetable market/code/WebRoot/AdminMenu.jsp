<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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

		<title>My JSP 'AdminMenu.jsp' starting page</title>


		<link rel="stylesheet" type="text/css" href="css/menu.css" />
		<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" />
		<script src="css/HoverMenu.js" type="text/javascript">
</script>
	</head>
	<body>


		<ul id="nav">
			<li class="top">
				<a href="AdminHome.jsp" class="top_link"><span>Home</span> </a>
			</li>
			<li class="top">
				<a href="AddMarket.jsp" id="services" class="top_link"><span
					class="down">Market</span> </a>
				<ul class="sub">
					<li>
						<a href="AddMarket.jsp" class="parent"><span>Add Market</span> </a>
					</li>
					<li>
						<a href="ViewMarketAdmin.jsp" class="parent"><span>View Market</span> </a>
					</li>
				</ul>
			</li>
				<li class="top">
				<a href="AddVegName.jsp" id="services" class="top_link"><span class="down">Vegetable</span> </a>
				<ul class="sub">
					<li>
						<a href="AddVegName.jsp" class="parent"><span>Add Vegetable</span> </a>
					</li>
					<li>
						<a href="ViewVegAdmin.jsp" class="parent"><span>View Vegetable</span> </a>
					</li>
				</ul>
			</li>
			<li class="top">
				<a href="AddVegPriceByMarket.jsp" id="services" class="top_link"><span
					class="down">Vegetable Price </span> </a>
				<ul class="sub">
					<li>
						<a href="AddVegPriceByMarket.jsp" class="parent"><span>Add Cost Vegetable</span> </a>
					</li>
					<li>
						<a href="ViewAllVegMarketPrice.jsp" class="parent"><span>Vegetable Price</span> </a>
					</li>
					<li>
						<a href="ViewVegMarketPriceByMarketAdmin.jsp" class="parent"><span>ViewVegetablePriceByMarket</span> </a>
					</li>
					<li>
						<a href="ViewVegMarketPriceByVegNameAdmin.jsp" class="parent"><span>ViewVegetablePriceByVegetable</span> </a>
					</li>
					<li>
						<a href="UpdateVegPrice.jsp" class="parent"><span>Update Vegetable Price</span> </a>
					</li>
				</ul>
			</li>
			<li class="top">
				<a href="ChangePassword.jsp" class="top_link"><span>Change Password</span>
				</a>
			</li>
			<li class="top">
				<a href="LogoutAction.jsp" class="top_link"><span>Logout</span>
				</a>
			</li>


		</ul>