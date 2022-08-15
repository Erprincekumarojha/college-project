<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@page import="com.dts.aoc.dto.VegDTO"%>
<%@page import="com.dts.aoc.dao.VegDAO"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'a.jsp' starting page</title>
		<title>My JSP 'ViewVegAdmin.jsp' starting page</title>


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
				String path2 = request.getRealPath("/images");
				HashMap<Integer, VegDTO> hm = new VegDAO().getVegInfo(path2);
				VegDTO obj = new VegDTO();
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
						<label style="color: red; font-style: italic; text-align: center;">
							<%
								String status = request.getParameter("status");
								if (status != null) {
									out.println(status);
								}
							%>
						</label>
						<br />
						<br />
						<br />
						<table class="myTable" style="width: 550px;">
							<tr style="color: #000077; font-size: 18px;">
								<th style="width: 50px;">
									Sr No
								</th>
								<th style="width: 200px;">
									Vegetable Name
								</th>
								<th style="width: 208px; text-align: center;">
									Picture
								</th>
								<th style="width: 75px;">
									Delete
								</th>
							</tr>
							<%
								if (hm.size() > 0) {
									for (int i = 1; i <= hm.size(); i++) {
										obj = hm.get(i);
							%>
							<tr>
								<td><%=i%></td>
								<td><%=obj.getVegName()%></td>
								<td>
									<img src="images/<%=obj.getVegPic()%>"
										wd3__shadow_src="images/<%=obj.getVegPic()%>" height="200px"
										width="200px" alt="fghf" />
								</td>
								<td>
									<a href="DeleteVeg.jsp?key=<%=obj.getVegID()%>">Delete</a>
								</td>
							</tr>
							<%
								}
								} else {
							%>
							<tr>
								<td colspan="4">
									No information
								</td>
							</tr>
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
