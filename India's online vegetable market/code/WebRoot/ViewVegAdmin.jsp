<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.aoc.dto.VegDTO"%>
<%@page import="com.dts.aoc.dao.VegDAO"%>
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
			<div style="width: 1000px; height: auto; margin-top: -15px;background-color: white;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include
						page="AdminMenu.jsp"></jsp:include></div>
				<div  style="margin-top: -1px; width: 100%;background-color: white;height: auto;">
					<center>

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


						<%
							if (hm.size() > 0) {
								for (int i = 1; i <= hm.size(); i++) {
									obj = hm.get(i);
						%>


						<div
							style="width: 310px; height: 240px; float: left; ">
							<table width="290px">
								<tr>
									<td>
										<img src="images/<%=obj.getVegPic()%>" height="200px" border="1" 
											width="290px" alt="veg" />
									</td>
								</tr>
								<tr>
									<td><h2><%=obj.getVegName()%> </h2> </td>
								</tr>
								<tr>
									<td>
										<a href="DeleteVeg.jsp?key=<%=obj.getVegID()%>">Delete</a>
									</td>
								</tr>
								<tr><td> &nbsp; </td></tr>

							</table>

						</div>
						<div
							style="width: 20px; height: 240px; float: left;">

						</div>

						<%
							}
							}
						%>

						
					</center>
				</div>
				<div style="width: 1000px;  height: 30px;background-color: white;">

						
						</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>