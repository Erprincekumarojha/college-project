<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.aoc.dto.VegMarketPriceDTO"%>
<%@page import="com.dts.aoc.dao.VegMarketPriceDAO"%>
<%@page import="com.dts.aoc.dto.MarketDTO"%>
<%@page import="com.dts.aoc.dto.VegDTO"%>
<%@page import="com.dts.aoc.dao.VegDAO"%>
<%@page import="com.dts.aoc.dao.MarketDAO"%>
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

		<title>My JSP 'ViewAllVegMarketPrice.jsp' starting page</title>

		<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />
		<style type="text/css">
.myinfo {
	font-size: 1.1em;
	font-weight: 100;
	color: #000077;
}
</style>
		<style>
.myTable {
	text-align: left;
	background-color: #faf19e;
	border-collapse: collapse;
}

.myTable th {
	background-color: green;
	color: white;
}

.myTable td,.myTable th {
	padding: 2px;
	border: 1px solid goldenrod;
}
</style>
	</head>

	<body>
		<center>
			<%
				String u = (String) session.getAttribute("user");
				if (u == null) {
					String target = "Login.jsp?status=Please enter username and password";
					RequestDispatcher rd = request.getRequestDispatcher(target);
					rd.forward(request, response);
				}

				HashMap<Integer, VegMarketPriceDTO> hm = new VegMarketPriceDAO().getVegPriceInfoByMarketID();
							session.setAttribute("allVegPriceMarket",hm);
				VegMarketPriceDTO obj = new VegMarketPriceDTO();
				MarketDTO m = new MarketDTO();
				HashMap<Integer, MarketDTO> hmm = new MarketDAO().getAllMarketNameByMarketID();
				VegDTO v = new VegDTO();
				String path2 = request.getRealPath("/images");
				HashMap<Integer, VegDTO> hmv = new VegDAO().getAllVegInfoByVegID(path2);
			%>
			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include
						page="AdminMenu.jsp"></jsp:include></div>
				<div class="signup" style="margin-top: -1px; width: 100%;">
					<center>

						<br />
						<br />
						<br />
						<br />

						<table class="myTable" style="width: 900px;">
							<tr style="color: #000077; font-size: 15px;">
								<th style="width: 40px;">
									Sr No
								</th>
								<th>
									Market Name
								</th>
								<th style="width: 230px;">
									Vegetable Name
								</th>
								<th style="width: 50px;">
									Cost
								</th>
								<th style="width: 50px;">
									Status
								</th>
								<th style="width: 90px;">
									Update Date
								</th>
								<th style="width: 50px;">
									Update
								</th>
								<th style="width: 50px;">
									Delete
								</th>
							</tr>

							<%
								if (hm.size() > 0) {
									for (int i = 1; i <= hm.size(); i++) {
										obj = hm.get(i);
										m = hmm.get(obj.getMarketID());
										v = hmv.get(obj.getVegID());
							%>
							<tr style="color: #000000; font-size: 13px;">
								<td><%=i%></td>
								<td><%=m.getMarketName()%></td>
								<td><%=v.getVegName()%></td>
								<td><%=obj.getVegCost()%>/<%=obj.getVegCostPer()%></td>
								<td>
									<%
										String vcs = obj.getVegCostStatus();
												if (vcs.equalsIgnoreCase("i")) {
									%>
									<img src="images/up.PNG" border="0"
										style="width: 15px; height: 25px;">
									<%
										} else if (vcs.equalsIgnoreCase("d")) {
									%>
									<img src="images/down.PNG" border="0"
										style="width: 15px; height: 25px;">
									<%
										} else if (vcs.equalsIgnoreCase("e")) {
													out.print("same");

												}else{
												out.println("not available");
												}
									%>

								</td>
								<td><%=obj.getVegCostDate()%></td>
								<td>
									<a href="UpdateVegMarketPrice.jsp?key=<%=i%>">Update</a>
								</td>
								<td>
									<a href="DeleteVegMarketPrice.jsp?key=<%=obj.getVmpID()%>">Delete</a>
								</td>
							</tr>
							<%
								}
								} else {
							%>
							<tr>
								<td colspan="11">
									No information
								</td>
							</tr>
							<%
								}
							%>
						</table>
						<br />
						<br />
						<br />
					</center>
				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>
