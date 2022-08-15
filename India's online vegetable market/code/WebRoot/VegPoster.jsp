<html>
	<head></head>
	<body>
		<%
			String vegName = (String) session.getAttribute("vegName");
			String vegPic = (String) session.getAttribute("vegPic");
		%>
		<div style="width: 1000px;height: auto;background-color: yellow;">
		
		<div style="width: 980px;height: auto;text-align: left;margin-left: 10px;;margin-top: 10px;">
		<img src="images/<%= vegPic.trim() %>"  border="0" style="width: 225px;height: 149px;">
		<div style="width: 900px;height: auto;text-align: right;">
		<h1><%=vegName%></h1>
		</div>
		</div>
		
		
		</div>
	</body>
</html>
