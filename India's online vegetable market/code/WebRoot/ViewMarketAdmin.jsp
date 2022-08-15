<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.aoc.dto.MarketDTO"%>
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

		<title>My JSP 'ViewMarketAdmin.jsp' starting page</title>

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
	background-color: lemonchiffon;
	border-collapse: collapse;
}

.myTable th {
	background-color: green;
	color: white;
}

.myTable td,.myTable th {
	padding: 4px;
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

				HashMap<Integer, MarketDTO> hm = new MarketDAO().getMarketInfo();
				MarketDTO obj = new MarketDTO();
			%>
			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include
						page="AdminMenu.jsp"></jsp:include></div>
				<div class="signup" style="margin-top: -1px; width: 100%;">
					<center>
						<table class="myTable" style="width: 900px;">
						<tr style="color: #000077; font-size: 16px;">
								<th rowspan="2">
									Sr No
								</th>
								<th rowspan="2" style="width: 180px;">
								Market	Name
								</th>
								<th rowspan="2" style="width: 320px;">
									Address
								</th>
								<th colspan="7">
								Vegetable Market Open
								</th>
								<th rowspan="2">
									Delete
								</th>
								</tr>
							<tr style="color: #000077; font-size: 16px;">
								
								<th>
									Su
								</th>
								<th>
									Mo
								</th>
								<th>
									Tu
								</th>
								<th>
									We
								</th>
								<th>
									Th
								</th>
								<th>
									Fr
								</th>
								<th>
									Sa
								</th>
							</tr>
							<%
							if(hm.size()>0){
								for (int i = 1; i <= hm.size(); i++) {
									obj = hm.get(i);
							%>
							<tr>
								<td><%=i%></td>
								<td><%=obj.getMarketName()%></td>
								<td><%=obj.getMarketAdd()%></td>
								<td><%
								if(obj.getSu()==1){
								%>
								<label style="color: green;">Open</label>
								<%
								}else{
								%>
								<label style="color: red">Close</label>
								<%
								}								
								 %></td>
								<td><%
								if(obj.getMo()==1){
								%>
								<label style="color: green;">Open</label>
								<%
								}else{
								%>
								<label style="color: red">Close</label>
								<%
								}								
								 %></td>
								<td><%
								if(obj.getTu()==1){
								%>
								<label style="color: green;">Open</label>
								<%
								}else{
								%>
								<label style="color: red">Close</label>
								<%
								}								
								 %></td>
								<td><%
								if(obj.getWe()==1){
								%>
								<label style="color: green;">Open</label>
								<%
								}else{
							%>
								<label style="color: red">Close</label>
								<%
								}								
								 %></td>
								<td><%
								if(obj.getTh()==1){
								%>
								<label style="color: green;">Open</label>
								<%
								}else{
								%>
								<label style="color: red">Close</label>
								<%
								}								
								 %></td>
								<td><%
								if(obj.getFr()==1){
								%>
								<label style="color: green;">Open</label>
								<%
								}else{
								%>
								<label style="color: red">Close</label>
								<%
								}								
								 %></td>
								<td><%
								if(obj.getSa()==1){
								%>
								<label style="color: green;">Open</label>
								<%
								}else{
								%>
								<label style="color: red">Close</label>
								<%
								}								
								 %></td>
								<td>
								<a href="DeleteMarket.jsp?key=<%=obj.getMarketID()%>">Delete</a>
								</td>
							</tr>
							<%
								}}else{
							%>
							<tr><td colspan="11"> No information </td></tr>
							<%
							}
							%>
						</table>
						
					</center>
				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>
