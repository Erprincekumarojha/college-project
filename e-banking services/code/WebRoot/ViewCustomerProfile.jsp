
<%@page import="com.dts.project.model.CustomerModel"%>
<%@page import="com.dts.project.dao.CustomerDAO"%>
<!-- saved from url=(0055)http://riverside.schoolweblockers.com/client/blogs.aspx -->
<HTML><HEAD><META http-equiv="Content-Type" content="text/html; charset=UTF-8">

<TITLE> WebLockers</TITLE>

<STYLE>
body {
	margin : 10;
	color : black;
}
table {
}
td {
	font-family : arial;
	font-size : 9pt;
}

.alertNew {
	font-size : 16pt;
	color:		red;
}

.mainborder {
	border-color: #000000;
}
.mainTable{
}
.managerHeader {
	font-weight:	bold;
	font-size:	24pt;
	
}
.error {
	font-family : arial;
	font-weight : bold;
	color : red;
}

.title {
	font-family : times;
	font-size : 24pt;	
	font-weight : bold;
	vertical-align : top;
}
.small {
	font-size : 8pt;
}
.bold {
	font-weight : bold;
}
.smallbold {
	font-size : 8pt;
	font-weight : bold;
}
.nav {
	font-size : 10pt;
	font-weight : bold;
	color : white;
	text-align : middle;
	text-decoration:	none;
}

.nav:hover {
	color	: yellow;
}
.nav:visited {
	color	: white;
}
.navHighlight {
	font-size : 10pt;
	font-weight : bold;
	text-align : middle;
	text-decoration:	none;
	color	: #00ff00;
}
.navHighlight:hover {
	color	: yellow;
}
.navHighlight:visited {
	color	: #00ff00;
}

.footerNav {
	color:	white;
}
input {
	font-size : 8pt;
	font-weight : bold;
}
.redcolored {
	color : #880022;
}

.bbhead {
	color:		white;
	font-weight:	bold;
	background-color: #990000;

}
.bbtable {
	border-color: #000099;
}

.teacherName {
	color:		brown;
}
.studentName {
	color:		#006400;
}
.adminName {
	color:		red;
}
.devName {
	color:		#990099;
}

.brochure_content1
{
	color:		black;
	font-weight:	bold;
	font-size:	12pt;
}
.brochure_content2
{
	color:		#990000;
	font-weight:	bold;
	font-size:	10pt;

}
.brochure_content3
{
	color:		#990000;
	font-weight:	bold;
	font-size:	8pt;

}
.brochure_content4
{
	color:		black;
	font-size:	8pt;

}
.brochure_content5
{
	color:		black;
	font-size:	7pt;

}
.brochure_topnav {
	color:		white;
	font-weight:	bold ;
	font-size:	12pt;
	text-decoration:none;
}
.brochure_subnav {
	color:		#0066ff;
	font-weight:	bold ;
	font-size:	12pt;
	text-decoration:none;
}
.brochure_subnavselected {
	color:		white;
	font-weight:	bold ;
	font-size:	12pt;
	text-decoration:none;
}
ul.brochure_list {
	list-style-image:URL(/images/Bullet.jpg);
}

</STYLE>


<SCRIPT>
function dev_validatePost(input) {
var subjectText;
var newText;
var re;
	re = /\s/g;
	subjectText = input.value;
	newText = re.exec(subjectText);
alert(newText);

	if (newText.length == 0) {
		alert("Please enter a subject");
		return false;
	} else {
		return true;
	}
}

function validatePost(input) {
	return true;
}

function addURL() {

	var url = prompt("Enter the URL (EXAMPLE: http://www.yahoo.com)", "http://");
	document.formSend.body.value = document.formSend.body.value + ' [a href=' + url + ' target=_new ]' + url + '[/a] ';
}

function addBlogImage () {
var url;
var fileDialog;

	url = 'blog_add_image.aspx';
//	url = 'http://www.yahoo.com';

	window.open(url);
}

</SCRIPT>
</HEAD><BODY>


<DIV align="center">

<TABLE class="mainborder" width="1200" height="400" cellpadding="0" cellspacing="0" border="5">
<TBODY><TR>
<TD style="border:0;">

	<TABLE width="1200" height="400" cellpadding="0" cellspacing="0" border="0">

	<TBODY><TR>
	<TD valign="top" bgcolor="#492dd9"><IMG src="./myimages/banner_top.jpg" border="0" width="1255" height="200">></TD>
	</TR>
	<TR>
	<TD height="100%" valign="top" width="100%">
		<TABLE class="mainTable" cellpadding="0" cellspacing="0" border="0" width="100%" height="100%">

		<TBODY><TR>
		<TD valign="top" align="middle" nbgcolor="#ffbf00" bgcolor="black" width="144" height="425" nbackground="/images/bg_leftnav_blank.jpg" style="background-repeat:no-repeat;" border="0">
			
		<TABLE valign="top">
		<TBODY><TR>
		<TD nalign="middle" height="10">&nbsp;</TD>
		</TR>

 



		<TR>
		<TD nalign="middle" height="20">&nbsp;</TD>
		</TR>

<%--		<TR>--%>
<%--		<TD nalign="middle"><A href="./hello.jsp" class="nav">Customers Blogs</A></TD>--%>
<%--		</TR>--%>

		
		<TR>
		<TD nalign="middle" height="20">&nbsp;</TD>
		</TR>




		</TBODY></TABLE>
		</TD>


		<TD align="left" valign="top">

			<TABLE border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
			<TBODY><TR>
			<TD height="100%" valign="top">
				<TABLE border="0" cellspacing="0" cellpadding="3" width="100%" height="100%">
				<TBODY><TR>
				<TD valign="top">


<SCRIPT>
function openHelpWindow (url) {
	oHelpWin = window.open(url, 'Help', 'fullscreen=0, menubar=0, toolbar=0, width=500, height=400, scrollbars=1');

}

</SCRIPT>




<TABLE cellpadding="0" cellspacing="0" width="550" class="Middle">
	<TBODY>
	<tr bgcolor="lightblue">	
	<td height="1" colspan="200" class="navText style1" id="navigation">
		<DIV id="navbar">	  
	<jsp:include page="CustomerOptions.jsp"/>       
        </DIV>
     </TD>
 </TR>		
   </TBODY>
 </TABLE>


 

<TABLE border="0" cellspacing="3" cellpadding="3" width="100%" height="85%">
<TBODY><TR>
<TD valign="top">

<BR>
<SCRIPT language="javascript">
function editMessage(input)
{
	document.location.href='blogs.aspx?nArticleID=' + input + '&edit=message&nBlogForumID=0';
}
</SCRIPT>
<TABLE class="bbtable" width="100%">
<TBODY><TR>
<TD colspan="5">
<H2 align="center"></H2>
<P align="right">
<SPAN style="color:white;">10 </SPAN> 
</P>


<FORM action="" method="post">
<table align="center" WIDTH="650" border="0" bordercolor="black" bgcolor="green">
      <th colspan="15" bgcolor=""><center><b><font color="white">CUSTOMER  DETAILS</font></center></th>
      <tr rowspan="4"></tr>
          
      <table align="center" WIDTH="" border="0" bordercolor="black" bgcolor="">
      
       <tr ><td><font color="red"><span class=Title><strong>
    <%if(request.getParameter("status")!=null)out.print(request.getParameter("status"));%></strong> </span> 
   </font> </td></tr>
       </table>
       
                
                <%
                 CustomerModel  em=null;
                String images=getServletContext().getRealPath("/userimages");
              String addressprofs=getServletContext().getRealPath("/addressprofs");
               // int custid=Integer.parseInt(request.getParameter("custid").trim());
                String loginname=(String)session.getAttribute("user"); 

       try{
      
       em=(CustomerModel)new CustomerDAO().getCustProfile(images,addressprofs,loginname);
         
          
         %> 
        <strong>
 <table align="center" WIDTH="650" border="0" bordercolor="block" bgcolor="">         
        
        <tr>
        <td>Cust Name </td>
<%--        <td>DOB</td>--%>
<%--        <td>DOJ</td>--%>
        <td>Address</td>
        <td>Address Proof</td>
        <td>MailID</td>
        <td>Phno</td>
        <td>Photo</td>    
         </tr>
         
        </table></strong>
        <table align="center" WIDTH="650" border="0" bordercolor="black" bgcolor="">
        <tr>
   
    <td value="<%=em.getCustid()%>"><a href="SeeCustPersonalProfile.jsp?custid=<%=em.getCustid()%>"><%=em.getCustfname()%> </a></td>
    
<%--    <td><%=em.getDob()%></td>    --%>
<%--    <td><%=em.getDoj()%></td>  --%>
    <td><%=em.getAddress()%></td>   
    <td value="<%=em.getCustid()%>.gif"><img src="addressprofs/<%=em.getCustid()%>.gif" height=30 width=50></td>
   <td><%=em.getEmailid()%></td> 
    <td><%=em.getPhno()%></td> 
   <td value="<%=em.getCustid()%>.gif"><img src="userimages/<%=em.getCustid()%>.gif" height=30 width=50></td>
    

  </tr>
   </table>
    <%}catch(Exception e)
{e.printStackTrace();}%> 
        
        

      </table>
</FORM>



</TD>
</TR>
<TR>
<TD>
<TABLE>
<TBODY><TR>

</TR>
<TR>
<TD align="middle">

<BR> <BR>
</TD>
</TR>
</TBODY></TABLE>
</TD>
</TR>

</TBODY></TABLE>


</TD>
</TR>
</TBODY></TABLE>

	
				</TD>
				</TR>
				</TBODY></TABLE>
	
			</TD>
			</TR>

			</TBODY></TABLE>

		</TD>
		</TR>

			<TR>
			<TD class="footerNav" bgcolor="black" colspan="3" align="middle" height="20%" valign="center">
			
			</TD>
			</TR>

		</TBODY></TABLE>

	</TD>
	</TR>
	</TBODY></TABLE>

</TD>
</TR>
</TBODY></TABLE>

</DIV>

 




</BODY></HTML>