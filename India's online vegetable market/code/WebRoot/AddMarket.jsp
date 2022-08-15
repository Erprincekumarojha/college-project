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

		<title>My JSP 'AddMarket.jsp' starting page</title>

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
						<form action="./AddMarketAction" name="event1"
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
										<input type="text" name="mname" id="mname" class="input_text"
											value="" required="">
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
										Market	Open :
										</p>
									</td>
									<td>
										Su
										<input type="checkbox" name="checkbox" value="1" />
										Mo
										<input type="checkbox" name="checkbox" value="2" />
										Tu
										<input type="checkbox" name="checkbox" value="3" />
										We
										<input type="checkbox" name="checkbox" value="4" />
										Th
										<input type="checkbox" name="checkbox" value="5" />
										Fr
										<input type="checkbox" name="checkbox" value="6" />
										Sa
										<input type="checkbox" name="checkbox" value="7" />
										<label id="msgcheckbox"
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
											Address :
										</p>
									</td>
									<td>
										<textarea name="maddress" id="maddress" class="input_a"></textarea>

									</td>
								</tr>
								<tr>
									<td>

									</td>
									<td>
										<label id="msgmaddress"
											style="color: red; font-size: 16px; font-style: italic;"></label>
									</td>

								</tr>
								<tr>
									<td></td>
									<td>
										<input type="submit" class="submit" value="Register Market">
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
