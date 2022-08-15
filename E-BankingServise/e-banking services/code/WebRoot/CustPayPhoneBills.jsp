
<%@page import="com.dts.core.util.CoreHash"%>

<%@page import="java.util.Enumeration"%>
<%@page import="com.dts.project.dao.EmpRegistrationDAO"%>
<%@page import="com.dts.project.model.EmpModel"%>
<%@page import="com.dts.project.dao.TelephoneDAO"%>
<%@page import="com.dts.project.model.TelephoneModel"%>
<%@page import="com.dts.project.dao.CustomerDAO"%>
<%@page import="com.dts.project.model.CustomerModel"%>

<!-- saved from url=(0033)http://www.indiantelenetwork.com/ -->
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
 <script type="text/javascript">

function inDate(){

  var date=new Date();
  document.custpayphonebill.stdate.value=date.getDate()+"-"+(date.getMonth()+1)+"-"+date.getYear();
  document.getElementById('exprId').innerHTML=0;
}

function inDate1(){

  var date=new Date();
  document.insurence.enddate.value=date.getDate()+"-"+(date.getMonth()+1)+"-"+(date.getYear()+1);
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

<script>
//var x_win = window.self; 

function goOn() {
var port=document.custpayphonebill.port.value;
var host=document.custpayphonebill.host.value;
var ttypeid=document.custpayphonebill.ttypeid.value;
window.location.href='http://'+host+':'+port+'/WEBLOCKER2/GetTalkTimeAmtAction?ttypeid='+ttypeid;

} 


function getDueAmt() {

var port=document.custpayphonebill.port.value;
var host=document.custpayphonebill.host.value;


var securno=document.custpayphonebill.securityno.value;
alert(securno);
var typeid=document.custpayphonebill.ttypeid.value;
alert(typeid);
var tno=document.custpayphonebill.tno.value;
alert(tno);
var ttimefrmin=document.custpayphonebill.talktimefrmin.value;
alert(ttimefrmin);
var ttime=document.custpayphonebill.talktime.value;

alert(ttime);

//window.location.href='http://'+host+':'+port+'/CitizenCardSystem/GetCustTelDueAmtAction?typeid='+typeid+'&secuno='+securno+'&tno='+tno+'&ttimefrmin='+ttimefrmin+'&ttime='+ttime;
window.location.href='http://'+host+':'+port+'/WEBLOCKER2/GetCustTelDueAmtAction?typeid='+typeid+'&secuno='+securno+'&tno='+tno;



} 


function getAllDtls() {

var securno=document.custpayphonebill.securityno.value;
var typeid=document.custpayphonebill.ttypeid.value;
var tno=document.custpayphonebill.tno.value;
var ttimefrmin=document.custpayphonebill.talktimefrmin.value;
var ttime=document.custpayphonebill.talktime.value;

} 

    
   
</script>



<script language=javascript>
function checkMailId(mailids)
{
var arr = new Array('.com','.net','.org','.biz','.coop','.info','.museum','.name','.pro'
,'.edu','.gov','.int','.mil','.ac','.ad','.ae','.af','.ag','.ai','.al',
'.am','.an','.ao','.aq','.ar','.as','.at','.au','.aw','.az','.ba','.bb',
'.bd','.be','.bf','.bg','.bh','.bi','.bj','.bm','.bn','.bo','.br','.bs',
'.bt','.bv','.bw','.by','.bz','.ca','.cc','.cd','.cf','.cg','.ch','.ci',
'.ck','.cl','.cm','.cn','.co','.cr','.cu','.cv','.cx','.cy','.cz','.de',
'.dj','.dk','.dm','.do','.dz','.ec','.ee','.eg','.eh','.er','.es','.et',
'.fi','.fj','.fk','.fm','.fo','.fr','.ga','.gd','.ge','.gf','.gg','.gh',
'.gi','.gl','.gm','.gn','.gp','.gq','.gr','.gs','.gt','.gu','.gv','.gy',
'.hk','.hm','.hn','.hr','.ht','.hu','.id','.ie','.il','.im','.in','.io',
'.iq','.ir','.is','.it','.je','.jm','.jo','.jp','.ke','.kg','.kh','.ki',
'.km','.kn','.kp','.kr','.kw','.ky','.kz','.la','.lb','.lc','.li','.lk',
'.lr','.ls','.lt','.lu','.lv','.ly','.ma','.mc','.md','.mg','.mh','.mk',
'.ml','.mm','.mn','.mo','.mp','.mq','.mr','.ms','.mt','.mu','.mv','.mw',
'.mx','.my','.mz','.na','.nc','.ne','.nf','.ng','.ni','.nl','.no','.np',
'.nr','.nu','.nz','.om','.pa','.pe','.pf','.pg','.ph','.pk','.pl','.pm',
'.pn','.pr','.ps','.pt','.pw','.py','.qa','.re','.ro','.rw','.ru','.sa',
'.sb','.sc','.sd','.se','.sg','.sh','.si','.sj','.sk','.sl','.sm','.sn',
'.so','.sr','.st','.sv','.sy','.sz','.tc','.td','.tf','.tg','.th','.tj',
'.tk','.tm','.tn','.to','.tp','.tr','.tt','.tv','.tw','.tz','.ua','.ug',
'.uk','.um','.us','.uy','.uz','.va','.vc','.ve','.vg','.vi','.vn','.vu',
'.ws','.wf','.ye','.yt','.yu','.za','.zm','.zw');

var mai = mailids;
var val = true;
var beforeat="";
var afterat="";
var afterat2="";

var dot=mai.lastIndexOf(".");
var con=mai.substring(dot, mai.length);
con=con.toLowerCase();
con=con.toString();

for(var i=0;i<(arr.length);i++)
{
	if(con == arr[i])
	{
		val=true;
		break;
	}
	else
	{
		val=false;
	}
}

var att=mai.lastIndexOf("@");
beforeat=mai.substring(0,att);
beforeat=beforeat.toLowerCase();
beforeat=beforeat.toString();
var asci1=beforeat.charCodeAt(0);

afterat=mai.substring(att+1, dot);
afterat=afterat.toLowerCase();
afterat=afterat.toString();

afterat2=mai.substring(att+1, mai.length);
afterat2=afterat2.toLowerCase();
afterat2=afterat2.toString();

if(beforeat=="" || afterat=="" || beforeat.length>30)
	val=false;

if(afterat2.length>64 || afterat.length<2)
	val=false;

if((afterat.charCodeAt(0))==45 || (afterat.charCodeAt(afterat.length-1))==45)
	val=false;

if(val==true)
{
	if(asci1 > 47 && asci1 < 58)
		val=false;
		
	if(asci1 < 48 || asci1 > 57)
	{
		for(var i=0; i<=beforeat.length-1; i++)
		{
			var asci2=beforeat.charCodeAt(i);
			if((asci2<=44 || asci2==47) || (asci2>=58 && asci2<=94) || (asci2==96) || (asci2>=123 && asci2<=127))
			{
				val=false;
				break;
			}
		}
		
		for(var j=0; j<=afterat.length-1; j++)
		{
			var asci3=afterat.charCodeAt(j);
			if((asci3<=44) || (asci3==46) || (asci3==47) || (asci3>=58 && asci3<=96) || (asci3>=123 && asci3<=127))
			{
				val=false;
				break;
			}
		}	
	}
}

if(val==false)
{
	alert("Your maild "+mai+" is not valid");
	return false;
}
else
{
	return true;
}
}
</script>
<script language = "Javascript">
/**
 * DHTML phone number validation script. Courtesy of SmartWebby.com (http://www.smartwebby.com/dhtml/)
 */

// Declaring required variables
var digits = "0123456789";
// non-digit characters which are allowed in phone numbers
var phoneNumberDelimiters = "()- ";
// characters which are allowed in international phone numbers
// (a leading + is OK)
var validWorldPhoneChars = phoneNumberDelimiters + "+";
// Minimum no of digits in an international phone no.
var minDigitsInIPhoneNumber = 10;

function isInteger(s)
{   var i;
    for (i = 0; i < s.length; i++)
    {   
        // Check that current character is number.
        var c = s.charAt(i);
        if (((c < "0") || (c > "9"))) return false;
    }
    // All characters are numbers.
    return true;
}
function trim(s)
{   var i;
    var returnString = "";
    // Search through string's characters one by one.
    // If character is not a whitespace, append to returnString.
    for (i = 0; i < s.length; i++)
    {   
        // Check that current character isn't whitespace.
        var c = s.charAt(i);
        if (c != " ") returnString += c;
    }
    return returnString;
}
function stripCharsInBag(s, bag)
{   var i;
    var returnString = "";
    // Search through string's characters one by one.
    // If character is not in bag, append to returnString.
    for (i = 0; i < s.length; i++)
    {   
        // Check that current character isn't whitespace.
        var c = s.charAt(i);
        if (bag.indexOf(c) == -1) returnString += c;
    }
    return returnString;
}

function checkInternationalPhone(strPhone){
var bracket=3
strPhone=trim(strPhone)
if(strPhone.indexOf("+")>1) return false
if(strPhone.indexOf("-")!=-1)bracket=bracket+1
if(strPhone.indexOf("(")!=-1 && strPhone.indexOf("(")>bracket)return false
var brchr=strPhone.indexOf("(")
if(strPhone.indexOf("(")!=-1 && strPhone.charAt(brchr+2)!=")")return false
if(strPhone.indexOf("(")==-1 && strPhone.indexOf(")")!=-1)return false
s=stripCharsInBag(strPhone,validWorldPhoneChars);
return (isInteger(s) && s.length >= minDigitsInIPhoneNumber);
}

function ValidatePnoneNumber(){
	var Phone=document.rigister.phno;
	
	if ((Phone.value==null)||(Phone.value=="")){
		alert("Please Enter your Phone Number")
		Phone.focus()
		return false
	}
	if (checkInternationalPhone(Phone.value)==false){
		alert("Please Enter a Valid Phone Number")
		Phone.value=""
		Phone.focus()
		return false
	}
	return true
 }
 
 
 
 
 function amt(){
var taktimefrmin=document.custpayphonebill.taktimefrmin.value;
var talktime=document.custpayphonebill.talktime.value;
var ddueamt=document.custpayphonebill.dueamt.value;
document.custpayphonebill.payamt.value=(parseInt(talktime)*parseInt(taktimefrmin))+parseInt(ddueamt);
}
 
 
 
 var xmlhttp




 function checkavail(){
	var securno=document.custpayphonebill.securityno.value;
alert(securno);
var typeid=document.custpayphonebill.ttypeid.value;
alert(typeid);
var tno=document.custpayphonebill.tno.value;
alert(tno);
var ttimefrmin=document.custpayphonebill.talktimefrmin.value;
alert(ttimefrmin);
var ttime=document.custpayphonebill.talktime.value;
alert(ttime);	
	var request;

		if(window.XMLHttpRequest){
			request = new XMLHttpRequest();}
		else
			request = new ActiveXObject("Microsoft.XMLHTTP");
			
			
				request.open("POST","./GetCustTelDueAmtAction.jsp?typeid="+typeid+"&secuno="+securno+"&tno="+tno);
				
				request.onreadystatechange =function() {
						
				if(request.readystate == 4 && request.status==200)	{
				
			var res = request.responseText;
					if(res=="true"){
						
						document.custpayphonebill.dueamt.value=xmlhttp.responseText;
					alert(xmlhttp.responseText);
					alert(dueamt);
					}
				}
			}
		
		request.send(null)
	
}
 
 
 
</script>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
body {
	background-color: #FFFFFF;
}
-->
</style>

<SCRIPT>
function openHelpWindow (url) {
	oHelpWin = window.open(url, 'Help', 'fullscreen=0, menubar=0, toolbar=0, width=500, height=400, scrollbars=1');

}

</SCRIPT>
<SCRIPT language="javascript">
function editMessage(input)
{
	document.location.href='blogs.aspx?nArticleID=' + input + '&edit=message&nBlogForumID=0';
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
			
		
		</TD>


		<TD align="left" valign="top">

			<TABLE border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
			<TBODY><TR>
			<TD height="100%" valign="top">
				<TABLE border="0" cellspacing="0" cellpadding="3" width="100%" height="100%">
				<TBODY><TR>
				<TD valign="top">
				
				<TABLE cellpadding="0" cellspacing="0" width="550" class="Middle">
	<TBODY>
	<tr bgcolor="lightblue">	
	<td height="20" colspan="200" class="navText style1" id="navigation">	 

		<DIV id="navbar">	
		
			
<%--  	<% String role=(String)session.getAttribute("role"); --%>
<%--	if(role!=null){--%>
<%--	if(role.equalsIgnoreCase("admin")){--%>
<%--	 %>--%>
<%--	<jsp:include page="AdminOptions.html"/>--%>
<%--	<%}else if(role.equalsIgnoreCase("employee")){ %>--%>
<%--	--%>
<%--	<jsp:include page="EmployeeOptions.jsp"/>--%>
<%--	--%>
<%--	<%}else if(role.equalsIgnoreCase("customer")){ %>--%>
	
	<jsp:include page="AdminOptions.html"/>
<%--	<%}--%>
<%--	else { %>--%>
<%--	--%>
<%--	<jsp:include page="LoginForm.jsp?status=session expired login again...."/>		--%>
<%--	<%} }else{--%>
<%--					response.sendRedirect("LoginForm.jsp?status=session expired login again...." );--%>
<%--			}	--%>
<%--	 %>--%>
       
       
        </DIV>
     </TD>
 </TR>	
	
   </TBODY>
 </TABLE>

 
	<TABLE class="bbtable" width="100%">
<TBODY><TR>
<TD colspan="5">
<H2 align="center"></H2>
<P align="right">
<SPAN style="color:white;">10 </SPAN> 
</P>


 <CENTER>
<TABLE cellpadding="0" cellspacing="0" width="500" style="width: 401px;">
<%--	<TBODY>--%>
<%--	<TR>	--%>
		
 <form method="" action="./TelephoneAction" name="custpayphonebill" > 
    
<%--     <table align="center" WIDTH="900" border="0" bordercolor="black" bgcolor="#F4F5F7">--%>
<%--      <th colspan="15" bgcolor="#3179c8"><center><b><font color="white">Pay Phone Bill Details</font></center></th>--%>
<%--      <tr rowspan="4"></tr>--%>
    
     <center>  <% if(request.getParameter("status")!=null)
					  {%>
                           <strong><font color=red><%=request.getParameter("status")%></font></strong>
                      <%}%></center>
  
  
       <input type="hidden" name="port" value="<%=request.getLocalPort() %>"/>
 <input type="hidden" name="host" value="<%=request.getServerName() %>"/>
  
 
  <tr><td>Phone Type</td><td><select  name="ttypeid" onchange="goOn()">
  <option value="select">-select-</option>
   <% CoreHash ch=new TelephoneDAO().getTelephoneTypeNames();
	             Enumeration em=ch.elements();
	             TelephoneModel p=null;
	             TelephoneModel p1=null;
	             p1=(TelephoneModel)session.getAttribute("talktimeamtdtls");
	         
	             while(em.hasMoreElements()){
	                   p=(TelephoneModel)em.nextElement();          
	                if(p1!=null){
	                  if(p.getTeltypeid()==p1.getTeltypeid()){
	                   
	                  %>
              <option  selected  value="<%=p1.getTeltypeid()%>"><%=p1.getTeltypename()%></option>
	                  
	                 <%} else{ %>
                 <option  value="<%=p.getTeltypeid()%>"><%=p.getTeltypename()%></option>   
                    <%} }else{ %>
                 <option  value="<%=p.getTeltypeid()%>"><%=p.getTeltypename()%></option>   
                    <%}}%>
                  </select>
                   </td></tr> <br>
  
  <tr><td>Amount For Minite</td><td><input type="text"  name="taktimefrmin" readonly value="<%if(request.getParameter("amtformin")!=null)out.println(request.getParameter("amtformin"));else out.println("");%>"></td></tr><br>
   <tr><td> Telephone No</td><td><input type="text"  name="tno" value=""></td></tr><br>
  <tr><td> Customer Name</td><td><select  name="custno">
  <option value="select">-Select-</option>
  
   <% CustomerModel c=null;
   CoreHash ch1=new CustomerDAO().getAllCustNames();
	             Enumeration em1=ch1.elements();
	             
	            int k=0;
	           
	         
	             while(em1.hasMoreElements()){
	                   c=(CustomerModel)em1.nextElement();          
	               
	                  %>
             
                 <option  value="<%=c.getCustid()%>"><%=c.getCustfname()%></option>   
                    <%}%>
                  </select>
                   </td></tr> <br>
  
  <tr><td> Talk Time</td><td><input type="text"  name="talktime"   value="" ></td></tr><br>  
  <tr><td> DueAmt</td><td><input type="text"  name="dueamt" onfocus="getDueAmt()" value="<%if(request.getParameter("damt")!=null)out.println(request.getParameter("damt"));else out.println(k);%>"></td></tr><br>
   <tr><td> Bill IssueDate</td><td><input type="text"  onfocus="inDate()" name="stdate"></td></tr><br>   
  <tr><td> Pay Amount</td><td><input type="text"  name="payamt" onfocus="amt()"></td></tr><br> 
  <tr><td><input type="submit" name="submit"   value="PayBill"></td><td><input type="reset" name="clear" value="Clear"></td></tr><br>
   
   
   </form>

</TABLE>
</CENTER>
<P></P>

<TR>
<TD>
<TABLE>
<TBODY>
<TR>
<TD align="middle" class="bold">Use the search box or select the first letter of the last name:
</TD>
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



</DIV>

</BODY></HTML>