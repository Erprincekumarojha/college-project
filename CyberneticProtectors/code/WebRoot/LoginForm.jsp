<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head>

		<script language="JavaScript"
			src="<%=request.getContextPath()
							+ "/scripts/gen_validatorv31.js"%>"
			type="text/javascript">
</script>
		<style type="text/css">
.Title {
	font-family: Verdana;
	font-weight: bold;
	font-size: 8pt
}

.Title1 {
	font-family: Verdana;
	font-weight: bold;
	font-size: 8pt
}
</style>


		<script type="text/javascript">
function disableBackButton() {
	window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>
	</head>
<style>
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 8px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 2px 1px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

.button1:hover {
    background-color: #4CAF50;
    color: white;
}

.button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
}

.button2:hover {
    background-color: #008CBA;
    color: white;
}

.button3 {
    background-color: white; 
    color: black; 
    border: 2px solid #f44336;
}

.button3:hover {
    background-color: #f44336;
    color: white;
}

.button4 {
    background-color: white;
    color: black;
    border: 2px solid #e7e7e7;
}

.button4:hover {background-color: #e7e7e7;}

.button5 {
    background-color: white;
    color: black;
    border: 2px solid #555555;
}

.button5:hover {
    background-color: #555555;
    color: white;
}
</style>

	<body onload="javascript:disableBackButton()">
		<jsp:include page="Header.jsp"></jsp:include>
		<form action="<%=request.getContextPath() + "/LoginAction"%>"
			method=post name="login">
			<div style='width:100%;'>
			<div style='width:29%;float:left;height:50px'>
			<image style='width:100%' src='./images/loginimage.png'></div>
			<div style='width:70%;float:left;'>
			<table  border="0" align="center" bgcolor="white" style='width:100%;'>
				<tr>
					<td height="120" align="center"></td>
					<td>
						<center>
							<table border="0" align="center">
								<tr style='display:none'>
									<td align='center' colspan='2'>
										<h3>
											Login here
										</h3>
									</td>
								</tr>

								<tr>
									<td align='right'>
										<span class="Title">User ID :</span>
									</td>
									<td>
										<font face="Baskerville Old Face"><input type="text"
												name="username" placeholder='Enter User Id Here'> </font>
									</td>
								</tr>
								<tr>
									<td align='right'>
										<span class="Title">Password :</span>
									</td>
									<td>
										<input placeholder='Enter Password Here' type="password" name="password">
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<div align="center" class="style11">
											<input type="submit" name="Submit" value="Sign In" class='button button2'>
											&nbsp;
											<input name="Input2" type="reset" value="Clear" class='button button3'>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										<div align="center" style=''>
											<a href="./Recoverpassword.jsp"><font color="blue">Forgot
													Password....?</font> </a>
										</div>
									</td>
									<td>
										&nbsp;
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


							</table>
							<tr>
			</table>
			</div>
			</div>
		</form>
		<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("login");

frmvalidator.addValidation("username", "req", "Login Name is required");
frmvalidator.addValidation("password", "req", "Password is required");
</script>
		
	</body>
</html>