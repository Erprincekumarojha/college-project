<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><html>

	<head>
		<!-- Include the javascript -->
		<script src="multifile_compressed.js">
</script>
		<script language="JavaScript"
			src="<%=request.getContextPath()
							+ "/scripts/gen_validatorv31.js"%>"
			type="text/javascript">
</script>
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
	</head>
	<body>
		<jsp:include page="Header.jsp"></jsp:include>
		
		
		<body>
			<!-- This is the form -->
			<form enctype="multipart/form-data"
				action="./TipsSuggessitionsAction" method="get" name='tips'>
				<table border='0' align="center">
					<th colspan="6" bgcolor="white">
						Tips & Suggessitions
					</th>
					<tr></tr>
					<tr></tr>
					<tr>
						<td align='right' style='font-weight:bold;'>
							Citizen Name :
						</td>
						<td>
							<input placeholder='Enter Citigen name' type="text" name="citizenname" value="" required/>
						</td>
					</tr>
					<tr>
						<td align='right' style='font-weight:bold;'>
							Citizen Email:
						</td>
						<td>
							<input  placeholder='Email here' type="email" name="email" value="" size="20" required/>
						</td>
					</tr>
					<tr>
						<td align='right' style='font-weight:bold;'>
							Suggessition :
						</td>
						<td>
							<textarea name='suggesstions' value='' required></textarea>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
						</td>
					</tr>
					<tr>
						<td align='right'>
							<input type='submit' name='submit' value='Add' class='button button2'/>
						</td>
						<td align='left'>
							<input type='reset' name='Reset' value='clear' class='button button3' />
						</td>
					</tr>
				</table>
			</form>
			
		</body>
		<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
var frmvalidator = new Validator("tips");
frmvalidator.addValidation("citizenname", "req", "Name is required");
frmvalidator.addValidation("email", "req", "Email is required");
frmvalidator.addValidation("suggesstions", "req", "suggesstions is required");
</script>
</html>