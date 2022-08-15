<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.aoc.dto.MarketDTO"%>
<%@page import="com.dts.aoc.dao.MarketDAO"%>
<%@page import="com.dts.aoc.dto.VegDTO"%>
<%@page import="com.dts.aoc.dao.VegDAO"%>
<%@page import="com.dts.aoc.bl.MarketOpenDay"%>
<%@page import="com.dts.aoc.dao.VegMarketPriceDAO"%>
<%@page import="com.dts.aoc.dto.VegMarketPriceDTO"%>
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

		<title>My JSP 'UpdateVegMarketPrice.jsp' starting page</title>

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
						<%
							int key = Integer.parseInt(request.getParameter("key").trim());

							HashMap hm = (HashMap) session.getAttribute("allVegPriceMarket");
							VegMarketPriceDTO obj = new VegMarketPriceDTO();							
							obj=(VegMarketPriceDTO)hm.get(key);
							m = hmm.get(obj.getMarketID());
							v = hmv.get(obj.getVegID());
							//============== Today Market is open? ==========						
							int tmo = 0; // tmo => today market is one if 1 then open if 0 then colse
							tmo = MarketOpenDay.getMarketOpenDayByMarketID(obj.getMarketID());
							if (tmo == 1) {
							
						%>


						<form action="./UpdateVegMarketPriceAction" name="event1"
							onsubmit="return validate();">
							<input type="hidden" name="vmp" value="<%=obj.getVmpID()%>">
							<table>
								<tr>
									<td>
										<p>
											Market Name :
										</p>
									</td>
									<td>
										<label
											style="color: #0000aa; font-size: 16px;">
											<%=m.getMarketName()%>
										</label>
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
										<label
											style="color: #0000aa; font-size: 16px;">
											<%=v.getVegName()%>
										</label>
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
									<input type="hidden" name="oldcost" value="<%=obj.getVegCost()%>">
									<label style="color: red;"> <%=obj.getVegCost()%>/<%=obj.getVegCostPer()%> </label> (Old Cost)
									<br/>
										<input type="text" name="cost" id="cost" value=""
											style="width: 50px;" required="">
										/
										<select name="per" style="width: 50px;">
											<option value="kg">
												kg
											</option>
											<option value="pice">
												pice
											</option>
										</select>
										<label id="msgcost"
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
											Vegetable Available :
										</p>
									</td>
									<td>
										<select name="vavailable" style="width: 50px;">
											<option value="y">
												Yes
											</option>
											<option value="n">
												No
											</option>
										</select>
										<label id="msgcost"
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
									<td></td>
									<td>
										<input type="submit" class="submit"
											value="Update Vegetable Cost">
									</td>
								</tr>
							</table>
						</form>

						<%
							} else {
						%>
						<label style="color: red; font-size: 40px; font-style: italic;">
							Today market is close
						</label>
						<%
							}
						%>
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