<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.aoc.dto.MarketDTO"%>
<%@page import="com.dts.aoc.dao.MarketDAO"%>
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

		<title>My JSP 'AddVegPriceByMarket.jsp' starting page</title>

		<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />

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
			%>
			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include
						page="AdminMenu.jsp"></jsp:include></div>
				<div class="signup" style="margin-top: -1px; width: 100%;">
					<center>
					<br/><br/><br/>
						<form action="./AddVegPriceByMarketAction" name="event1"
							onsubmit="return validate();">
							<table>
								<tr>
									<td colspan="2" style="">
										<label
											style="color: red; font-style: italic; text-align: center;">
											<%
												String status = request.getParameter("status");
												if (status != null) {
													out.println(status);
												}

												HashMap<Integer, MarketDTO> hm1 = new MarketDAO().getMarketInfo();
												MarketDTO obj = new MarketDTO();
												String path2 = request.getRealPath("/images");
												HashMap<Integer, VegDTO> hm2 = new VegDAO().getVegInfo(path2);
												VegDTO obj1 = new VegDTO();
											%>
										</label>
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Market Name :
										</p>
									</td>
									<td>
										<select name="mname" id="mname" style="width: 200px;">
											<option value="">
												----- Select -----
											</option>
											<%
												for (int i = 1; i <= hm1.size(); i++) {
													obj = hm1.get(i);
											%>
											<option value="<%=obj.getMarketID()%>"><%=obj.getMarketName()%></option>
											<%
												}
											%>
										</select>
										<label id="msgmname"
											style="color: red; font-size: 16px; font-style: italic;"></label>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Vegetable Name :
										</p>
									</td>
									<td>
										<select name="vname" id="vname" style="width: 200px;">
											<option value="">
												----- Select -----
											</option>
											<%
												for (int i = 1; i <= hm2.size(); i++) {
													obj1 = hm2.get(i);
											%>
											<option value="<%=obj1.getVegID()%>"><%=obj1.getVegName()%></option>
											<%
												}
											%>
										</select>
										<label id="msgvname"
											style="color: red; font-size: 16px; font-style: italic;"></label>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Cost :
										</p>
									</td>
									<td>
										<input type="text" name="cost" id="cost" 
											value="" style="width: 50px;" required="">
										/
										<select name="per" style="width: 50px;">
											<option value="kg">
												kg
											</option>
											<option value="pice">
												pice
											</option>
										</select>
<label id="msgcost" style="color: red; font-size: 16px; font-style: italic;"></label>
									</td>
								</tr>
									<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td></td>
									<td>
										<input type="submit" class="submit" value="Add Veg Cost By Market">
									</td>
								</tr>
							</table>
						</form>
					</center>
				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>
