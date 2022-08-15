<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddVegName.jsp' starting page</title>
    
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
						<form action="./AddVegNameAction" name="event1"
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
											Vegetable Name :
										</p>
									</td>
									<td>
										<input type="text" name="vname" id="vname" class="input_text"
											value="" required="">
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
											Picture :
										</p>
									</td>
									<td>
										<input type="file" name="pic" id="pic" value=""  class="input_text">
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
										<input type="submit" class="submit" value="Register Veg">
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
