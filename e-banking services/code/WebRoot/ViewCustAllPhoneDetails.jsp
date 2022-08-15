
<%@page import="com.dts.project.model.CustomerModel"%>
<%@page import="com.dts.project.dao.CustomerDAO"%>
<%@page import="com.dts.project.model.AccountModel"%>
<%@page import="com.dts.project.dao.AccountDAO"%>
<%@page import="com.dts.core.util.CoreHash"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.dts.project.dao.LoanDAO"%>
<%@page import="com.dts.project.model.LoanModel"%>
<%@page import="com.dts.project.dao.TransferDAO"%>
<%@page import="com.dts.project.model.TransferModel"%>
<%@page import="com.dts.project.model.TelephoneModel"%>
<%@page import="com.dts.project.dao.TelephoneDAO"%>
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


<script language="JavaScript" src="scripts/gen_validatorv31.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript" src="scripts/ts_picker.js"></script>
<script language="JavaScript1.1" src="scripts/pass.js">


</script> <script type="text/javascript" src="scripts/image.js"> </script>
 <script type="text/javascript" src="scripts/general.js"> </script>
 <script type="text/javascript" src="scripts/adi.js"> </script>
 <script type="text/javascript" src="scripts/form_validation.js"> </script>
 <script>
 function inDate(){

  var date=new Date();
  document.addcomputer.rDate.value=date.getDate()+"-"+(date.getMonth()+1)+"-"+date.getYear();
  document.getElementById('exprId').innerHTML=0;
}
function offDate(){

var day=document.forms.register.elements("day");
var dayvalue=day.options[day.selectedIndex].value;
var month=document.forms.register.elements("month");
var monthvalue=month.options[month.selectedIndex].value;
var year=document.forms.register.elements("year");
var yearvalue=year.options[year.selectedIndex].value;

 var append1=dayvalue+"-"+monthvalue+"-"+yearvalue;

 var append=append1.split("-");

born = new Date(bD[2], bD[1]*1-1, bD[0]);
years = Math.floor((now.getTime() - born.getTime()) / (365.25 * 24 * 60 * 60 * 1000));

 if(years>21){
 document.register.doj.value=date.getDate()+"-"+(date.getMonth()+1)+"-"+date.getYear();;
}
 else{
   document.register.doj.value="";
   alert('Date Of Join Must Be Greater Then 21');
   
 }
<%--  var date=new Date();--%>
<%--  var checkdate=date.getDate()+"-"+(date.getMonth()+1)+"-"+date.getYear();--%>
<%--      bD=checkdate.split("-");--%>
<%--      --%>
<%--      born = new Date(bD[2], bD[1]*1-1, bD[0]);--%>
<%--	  years = Math.floor((date.getTime() - born.getTime()) / (365.25 * 24 * 60 * 60 * 1000));--%>
<%--  if(years>21){--%>
<%--  document.register.doj.value=date.getDate()+"-"+(date.getMonth()+1)+"-"+date.getYear();--%>
<%--  document.getElementById('exprId').innerHTML=0;--%>
<%--  }--%>
<%--  else{--%>
<%--  alert ('Date Of Join Must Be Greater Than 21');--%>
<%--  }--%>
}

function calAgeTo(){

  var day=document.forms.register.elements("day");
var dayvalue=day.options[day.selectedIndex].value;
var month=document.forms.register.elements("month");
var monthvalue=month.options[month.selectedIndex].value;
var year=document.forms.register.elements("year");
var yearvalue=year.options[year.selectedIndex].value;

 var append=dayvalue+"-"+monthvalue+"-"+yearvalue;

 
 now = new Date()
 bD = append.split('-');

 if(bD.length!=3){
   alert('Date Is Not Valid'); 
  document.getElementById('AgeId').innerHTML="";
  
 }
 else if(bD.length==3){
	 	born = new Date(bD[2], bD[1]*1-1, bD[0]);
	  years = Math.floor((now.getTime() - born.getTime()) / (365.25 * 24 * 60 * 60 * 1000));
    
   document.getElementById('AgeId').innerHTML=years; 
 }
}
function DOBcalc() {

<%--if(!register.doj.value==""){--%>
<%--  var DOjmdy = (register.doj.value).split('-'); --%>
<%--  Bjdate = new Date(DOjmdy[2],DOjmdy[0]-1,DOjmdy[1]); --%>
<%--  var bb=Bjdate.getFullYear();--%>
<%--  var DOBmdy = (register.dobirth.value).split('-'); --%>
<%--  --%>
<%--  Bdate = new Date(DOBmdy[2],DOBmdy[0]-1,DOBmdy[1]); --%>
<%--  var bDate=Bdate.getFullYear();--%>
<%--   var AgeValue=21;--%>
<%--    var Final=bb-AgeValue;--%>
<%--    if(Final>=bDate){}--%>
<%--	else{--%>
<%--  alert('Check The Joining Date Plz\n Must Be Greater Than ');--%>
<%--  --%>
<%--  }--%>
<%--  	}--%>
var date=new Date();
register.doj.value=date;

}
function disEnable(){
  register.hQual.disabled=false;
}
 </script>
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


 <form method="" action="ViewCustAllPhoneDetails.jsp" name="phonedetails" > 
    
     <table align="center" WIDTH="430" border="0" bordercolor="black" bgcolor="#F4F5F7">
      <th colspan="2" bgcolor="#a4c2c2"><center><b><font color="white">Customer Phone Details</font></center></th>
      <tr rowspan="5"></tr>
      <tr>
    <td>
     <center>  </center>
    </td>
    </tr> 
          <tr><td><center>  <% if(request.getParameter("status")!=null)
					  {%>
                           <strong><font color=red><%=request.getParameter("status")%></font></strong>
                      <%}%></center></td></tr>
  
  
  
       <input type="hidden" name="port" value="<%=request.getLocalPort() %>"/>
 <input type="hidden" name="host" value="<%=request.getServerName() %>"/>
  
  
   <tr><td>Phone Type</td><td><select  name="ttypeid" >
  <option value="select">-select-</option>
   <% CoreHash ch=new TelephoneDAO().getTelephoneTypeNames();
	             Enumeration em=ch.elements();
	             TelephoneModel p=null;
	             
	                    
	             while(em.hasMoreElements()){
	                   p=(TelephoneModel)em.nextElement();          
	              
	                   
	                  %>
              
                 <option  value="<%=p.getTeltypeid()%>"><%=p.getTeltypename()%></option>   
                    <%}%>
                  </select>
                   </td></tr> <br>
    
  
		
		 <%
                String loginname=(String)session.getAttribute("user"); 
String image=getServletContext().getRealPath("/userimages");

 
 CustomerModel cmodel=null;
 
        cmodel=new CustomerDAO().getPerCustIDBYName(loginname);
               int custid=cmodel.getCustid();
      // cmodel=new CustomerDAO().getPerticularCustProfile(image,custid);
     ///  int secno=cmodel.getCustid();
          String cname=cmodel.getCustfname();                
         %> 
         <input type="hidden" size=""  name="custno" value="<%=custid %>" >
      <tr><td> Customer Name</td><td><input type="text" size=""  name="cn" value="<%=cname %>" ></td></tr><br>
		
	<tr><td><input type="submit" name="submit"   value="View"></td></tr><br>	
		</form>
		
		<%if(request.getParameter("submit")!=null){ %>
		
		<form name="" action="" method="">     
<table align="center" WIDTH="600" border="0" bordercolor="black" bgcolor="#F4F5F7">
<%--      <th colspan="15" bgcolor="#3179c8"><center><b><font color="white">View All Phone Bill Details</font></center></th>--%>
<%--      <tr rowspan="4"></tr>--%>
<%--          --%>
       
                
                <%
               // String loginname=(String)session.getAttribute("user"); 
//String image=getServletContext().getRealPath("/userimages");
 TelephoneModel emodel=null; 
 
       try{      
       
       int ttypeid=Integer.parseInt(request.getParameter("ttypeid"));
       int sno=Integer.parseInt(request.getParameter("custno"));
       
       CoreHash ch1=new TelephoneDAO().getAllPhoneDetailsOfUser(sno,ttypeid);
         Enumeration em1=ch1.elements();
        if(ch1!=null){           
         %> 
                  
       <tr>
    <td>PH.No </td> 
    <td>PHONE TYPE</td>    
    <td>Customer Name</td>
    <td>Talk Time</td>          
    <td>BillIssueDate</td>      
    <td>Due Amount </td> 
    <td>Status</td>  
     <td>Pay Amount</td>  
    
    </tr>  
         <% while(em1.hasMoreElements()){
             emodel=(TelephoneModel)em1.nextElement();
             
             
         %>
        <tr> 
               <td ><a href="CustIsPayingPhoneBills.jsp?phno=<%=emodel.getTelphno()%>&ttypeid=<%=emodel.getTeltypeid() %>&custtid=<%=sno%>"><%=emodel.getTelphno() %></a></td>
               <td value="<%=emodel.getTeltypeid() %>"><%=emodel.getTeltypename() %></td>                 
               <td value="<%=custid %>"><%=cname %></td> 
               <td ><%=emodel.getTalktime() %></td>
               <td ><%=emodel.getBilisuedate() %></td>
               <td ><%=emodel.getDueamt() %></td>
               <td ><%=emodel.getStatus() %></td>
               <td ><%=emodel.getAmt2pay() %></td>
               
                     
          </tr>
        <%             
         }}else { %>
      
         <tr><td height="24" colspan="6"><div align="center" class="style7"><strong>Not Available</strong></div></td>
       <%}  }catch(Exception e){e.printStackTrace();}        
        %>  
      </table>
</form>

	<%}%>
       



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