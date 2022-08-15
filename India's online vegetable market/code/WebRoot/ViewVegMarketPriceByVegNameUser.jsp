<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.dts.aoc.dto.VegMarketPriceDTO"%>
<%@page import="com.dts.aoc.dao.VegMarketPriceDAO"%>
<%@page import="com.dts.aoc.dto.MarketDTO"%>
<%@page import="com.dts.aoc.dto.VegDTO"%>
<%@page import="com.dts.aoc.dao.VegDAO"%>
<%@page import="com.dts.aoc.dao.MarketDAO"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ViewVegMarketPriceByVegNameUser.jsp' starting page</title>
    
	
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

			<form action="ViewVegMarketPriceByVegNameUser.jsp">
				<%
					String u = (String) session.getAttribute("user");
					if (u == null) {
						String target = "Login.jsp?status=Please enter username and password";
						RequestDispatcher rd = request.getRequestDispatcher(target);
						rd.forward(request, response);
					}

					VegMarketPriceDTO obj = new VegMarketPriceDTO();
					MarketDTO m = new MarketDTO();
					HashMap<Integer, MarketDTO> hmm = new MarketDAO()
							.getAllMarketNameByMarketID();
					VegDTO v = new VegDTO();
					String path2 = request.getRealPath("/images");
					HashMap<Integer, VegDTO> hmv = new VegDAO()
							.getAllVegInfoByVegID(path2);

					HashMap<Integer, VegDTO> hm1 = new VegDAO().getVegInfo(path2);
					VegDTO objv = new VegDTO();
				%>
				<div style="width: 1000px; height: auto; margin-top: -15px;">
					<jsp:include page="Header.jsp"></jsp:include>
					<div style="margin-top: -3px;"><jsp:include
							page="UserMenu.jsp"></jsp:include></div>
					<div class="signup" style="margin-top: -1px; width: 100%;">
						<center>
							<%
								try {
									String vnameid = request.getParameter("vnameid");

									if (vnameid.length() > 0) {								
									

										//=================================================
										
										HashMap<Integer, VegMarketPriceDTO> hm = new VegMarketPriceDAO()
													.getVegPriceInfoByVegID(vnameid);
														session.setAttribute("allVegPriceMarket",hm);
														
												
													obj = hm.get(1);
													v = hmv.get(obj.getVegID());													
													String vegName=v.getVegName();
													String vegPic=v.getVegPic();
													
													session.setAttribute("vegName",vegName);
													session.setAttribute("vegPic",vegPic);
													
													
													
							%>
							
							<jsp:include page="VegPoster.jsp"></jsp:include>
							<table>
								<tr>
									<td>
										<p>
											Vegetable Name :
										</p>
									</td>
									<td>
										<select name="vnameid" id="vnameid" style="width: 200px;">
											<option value="">
												----- Select -----
											</option>
											<%
												for (int i = 1; i <= hm1.size(); i++) {
															objv = hm1.get(i);
											%>
											<option value="<%=objv.getVegID()%>"><%=objv.getVegName()%></option>
											<%
												}
											%>
										</select>
										<label id="msgvnameid"
											style="color: red; font-size: 16px; font-style: italic;"></label>
									</td>
									<td>
										&nbsp;
									</td>
									<td>
										<input type="submit" class="submit"
											value="View Vegetable  Price">
									</td>
								</tr>

							</table>
							<br />

							<table class="myTable" style="width: 810px;">
								<tr style="color: #000077; font-size: 15px;">
									<th style="width: 50px;">
										Sr No
									</th>
									<th style="width: 300px;">
										Market Name
									</th>
									<th style="width: 200px;">
										Vegetable Name
									</th>
									<th style="width: 50px;">
										Cost
									</th>
									<th style="width: 100px;">
										Status
									</th>
									<th style="width: 100px;">
										Update Date
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
							<%
								//==================================================

									} else {
							%>

							<table>
								<tr>
									<td>
										<p>
											Vegetable Name :
										</p>
									</td>
									<td>
										<select name="vnameid" id="vnameid" style="width: 200px;">
											<option value="">
												----- Select -----
											</option>
											<%
												for (int i = 1; i <= hm1.size(); i++) {
															objv = hm1.get(i);
											%>
											<option value="<%=objv.getVegID()%>"><%=objv.getVegName()%></option>
											<%
												}
											%>
										</select>
										<label id="msgvnameid"
											style="color: red; font-size: 16px; font-style: italic;"></label>
									</td>
									<td>
										&nbsp;
									</td>
									<td>
										<input type="submit" class="submit"
											value="View Vegetable  Price">
									</td>
								</tr>

							</table>
							<%
								}

								} catch (Exception exception) {
							%>


							<table>
								<tr>
									<td>
										<p>
											Vegetable Name :
										</p>
									</td>
									<td>
										<select name="vnameid" id="vnameid" style="width: 200px;">
											<option value="">
												----- Select -----
											</option>
											<%
												for (int i = 1; i <= hm1.size(); i++) {
														objv = hm1.get(i);
											%>
											<option value="<%=objv.getVegID()%>"><%=objv.getVegName()%></option>
											<%
												}
											%>
										</select>
										<label id="msgvnameid"
											style="color: red; font-size: 16px; font-style: italic;"></label>
									</td>
									<td>
										&nbsp;
									</td>
									<td>
										<input type="submit" class="submit"
											value="View Vegetable  Price">
									</td>
								</tr>

							</table>
							<%
								}
							%>
							<br />
							<br />
						</center>
					</div>
					<div style="margin-top: -3px;">
						<jsp:include page="Footer.jsp"></jsp:include>
					</div>
				</div>
			</form>
		</center>
	</body>
</html>
	