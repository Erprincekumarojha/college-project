<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<HTML>
	<HEAD>
		<TITLE>Untitled Document</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
		<META content="Microsoft FrontPage 4.0" name=GENERATOR>
	</HEAD>
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
	<BODY text=#000000 leftMargin=0 topMargin=0>
		<jsp:include page="Header.jsp"></jsp:include>
		<center>
			<font color='black' style='font-size:20Px;    font-weight: bold;'>Upload your Updated Resume Here<font>
		</center>
		
		<br>
		<TABLE cellSpacing=0 cellPadding=0 style='width:100%;' border=0>
			<TBODY>
				<form name="post" action="./ResumePostAction" method="post">
					<TR>
						<TD height=2></TD>
					</TR>
					<TR>
						<TD vAlign=top height=321>
							<TABLE cellSpacing=0 cellPadding=0 style='width:100%;' border=0>
								<TBODY>
									<TR>
										<TD valign=top width=772>
											<font color="#4583c0"> </font>
											<b></b>
											<center>
												<table>


													<tr style='height:40px;'>
														<td align='right'>
															<font size="3" color="black">Applicant EmailID :</font>
															<input placeholder='Enter Email here' type='email' name='email' value='' required>
														</td>
													</tr>
													<tr>
														<td>

															<font size="2" color="black"> Please select your
																Resume Path Here...</font>
														</td>
													</tr>
													<tr>
														<td align='right'>
															<input type='file' name='resumepath' value='' required>
														</td>
													</tr>
													<tr>
														<td align='center'>
															<strong> <input type="submit" name="button"
																	value="Post" tabindex="2"
																	class='button button2'> </strong>
															<input type="reset" value="Clear" name="B2" tabindex="3"
																class='button button3'>
														</td>
													</tr>
													</TD>
													</TR>
													</TBODY>
												</TABLE>
										</TD>
									</TR>
									</form>
								</TBODY>
							</TABLE>
	</BODY>
</HTML>
