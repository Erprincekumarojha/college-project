
<%@page import="com.dts.core.util.CoreHash"%>

<%@page import="java.util.Enumeration"%>
<%@page import="com.dts.project.dao.EmpRegistrationDAO"%>
<%@page import="com.dts.project.model.EmpModel"%>

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

<script>
//var x_win = window.self; 

function goOn() {
var port=document.adduser.port.value;
var host=document.adduser.host.value;
var username=document.adduser.username.value;
<%--window.location.href='http://'+host+':'+port+'/ADV/ChekUserAction?username='+username;--%>

} 
function trim(str){
while(str.chatAt(str.length-1)==" ")
str=str.substring(0,str.length-1);
while(str.chatAt(0)==" ")
str=str.substring(1,str.length);

return str;
}



  
  function checkUserName(){
  var temp = document.adduser;
  
 if ( temp.username.value.length <8 || temp.username.value.length >20) {
  alert(" a username should contain between 8 and 20 character");
       
        return false;
  } 
  return true;
  }
  
  
  function checkPass(){
  var temp = document.adduser;
   if (temp.password.value.length <5 || temp.password.value.length >15) {
  alert("a password should contain between 5  and  10 character");
    
    return false;
  } 
  return true;
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
	
<%--	<jsp:include page="CustomerOptions.jsp"/>--%>
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
   <form method="get" action="./EmpRegistration" name="rigister" onSubmit="return validate()"> 
    
    <% if(request.getParameter("status")!=null)
					  {%>
                           <strong><font color=red><%=request.getParameter("status")%></font></strong>
                      <%}%><br/>
  <tr><td> First Name</td><td><input type="text" name="firstname"></td></tr> 
 <tr><td>  Middle Name</td><td><input type="text" name="middlename"></td></tr>
    <tr><td>  Last Name </td><td><input type="text" name="lastname"></td></tr>
      <tr><td>Date Of Birth</td><td>
      <select name="day">
    <option value="00" selected>-:Day:-</option>
     <option value="01">01</option>
    <option value="02">02</option>
    <option value="03">03</option>
    <option value="04">04</option>
    <option value="05">05</option>
    <option value="06">06</option>
    <option value="07">07</option>
    <option value="08">08</option>
    <option value="09">09</option>
    <option value="10">10</option>
    <option value="11">11</option>
    <option value="12">12</option>
    <option value="13">13</option>
    <option value="14">14</option>
    <option value="15">15</option>
    <option value="16">16</option>
    <option value="17">17</option>
    <option value="18">18</option>
    <option value="19">19</option>
    <option value="20">20</option>
    <option value="21">21</option>
</select><select name="month">
    <option value="00" selected>-:Month:-</option>
    <option value="01">January</option>
    <option value="02">February</option>
    <option value="03">March</option>
    <option value="04">April</option>
    <option value="05">May</option>
    <option value="06">June</option>
    <option value="07">July</option>
    <option value="08">August</option>
    <option value="09">September</option>
    <option value="10">October</option>
    <option value="11">November</option>
    <option value="12">December</option>
</select><select name="year">
  <option value="2007">2007</option>

  <option value="2006">2006</option>

  <option value="2005">2005</option>

  <option value="2004">2004</option>

  <option value="2003">2003</option>

  <option value="2002">2002</option>

  <option value="2001">2001</option>
  <option value="2000">2000</option>
  <option value="1999">1999</option>
  <option value="1998">1998</option>
  <option value="1997">1997</option>
  <option value="1996">1996</option>
  <option value="1995">1995</option>
  <option value="1994">1994</option>
  <option value="1993">1993</option>
  <option value="1992">1992</option>
  <option value="1991">1991</option>  
  <option value="1990">1990</option>
  <option value="1989">1989</option>
  <option value="1988">1988</option>
  <option value="1987">1987</option>

  <option value="1986">1986</option>
  
  <option value="1985">1985</option>

  <option value="1984">1984</option>

  <option value="1983">1983</option>

  <option value="1982">1982</option>

  <option value="1981">1981</option>

</select></td></tr><br/>

   <tr><td>Date Of Join</td>
   <td><select name="jday">
    <option value="00" selected>-:Day:-</option>
    <option value="01">01</option>
    <option value="02">02</option>
    <option value="03">03</option>
    <option value="04">04</option>
    <option value="05">05</option>
    <option value="06">06</option>
    <option value="07">07</option>
    <option value="08">08</option>
    <option value="09">09</option>
    <option value="10">10</option>
    <option value="11">11</option>
    <option value="12">12</option>
    <option value="13">13</option>
    <option value="14">14</option>
    <option value="15">15</option>
    <option value="16">16</option>
    <option value="17">17</option>
    <option value="18">18</option>
    <option value="19">19</option>
    <option value="20">20</option>
    <option value="21">21</option>
</select><select name="jmonth">
    <option value="00" selected>-:Month:-</option>
    <option value="01">January</option>
    <option value="02">February</option>
    <option value="03">March</option>
    <option value="04">April</option>
    <option value="05">May</option>
    <option value="06">June</option>
    <option value="07">July</option>
    <option value="08">August</option>
    <option value="09">September</option>
    <option value="10">October</option>
    <option value="11">November</option>
    <option value="12">December</option>
</select><select name="jyear">

 <option value="2010">2010</option>
  <option value="2009">2009</option>
  <option value="2008">2008</option>
  <option value="2007">2007</option>  
  <option value="2006">2006</option>

  <option value="2005">2005</option>

  <option value="2004">2004</option>

  <option value="2003">2003</option>

  <option value="2002">2002</option>

  <option value="2001">2001</option>

  <option value="2000">2000</option>

  <option value="1999">1999</option>

  <option value="1998">1998</option>

  <option value="1997">1997</option>

  <option value="1996">1996</option>

  <option value="1995">1995</option>

  <option value="1994">1994</option>

  <option value="1993">1993</option>

  <option value="1992">1992</option>

  <option value="1991">1991</option>

  <option value="1990">1990</option> 

</select></td></tr>  <br/>

<tr><td>Address </td><td><textarea cols="10" rows="1" name="address"></textarea></td></tr>
<tr><td>Email-ID</td><td><input type="text" onBlur="checkMailId(rigister.emailid.value)" name="emailid"></td></tr><br/>
<tr><td>Phone No</td><td><input type="text" onBlur="ValidatePnoneNumber()" name="phno"></td></tr><br/>
<tr><td>Salary </td><td><input type="text" name="salary"></td></tr><br/>
<tr><td>Photo </td><td><input type="file" name="photo"></td></tr>
<tr><td>Disgnation</td><td><select size="1" name="disgnation">
<option value="select">-Select-</option>
 <% CoreHash ch=new EmpRegistrationDAO().getDesigNames();
	             Enumeration em=ch.elements();
	             EmpModel p=null;
	             while(em.hasMoreElements()){
	                   p=(EmpModel)em.nextElement();                 
	                   
	                  %>
                    <option  value="<%=p.getDesgid()%>"><%=p.getDesgname()%></option>
                    <%} %>
</select>
</td></tr><br/>



<tr><td>Department</td><td>
<select size="1" name="dname">
<option value="select">-Select-</option>
<% CoreHash ch1=new EmpRegistrationDAO().getDeptNames();
	             Enumeration em1=ch1.elements();
	            
	             EmpModel p1=null;
	             while(em1.hasMoreElements()){
	                   p1=(EmpModel)em1.nextElement();
	                     %>
                    <option  value="<%=p1.getDeptid()%>"><%=p1.getDeptname()%></option>
                    <%} %>
</select>
</td></tr><br/>

<tr><td>Qualification</td><td><select size="1" name="qualification">
<option value="select">-Select-</option>
 <% CoreHash ch3=new EmpRegistrationDAO().getQualification();
	             Enumeration em3=ch3.elements();
	             EmpModel p3=null;
	             while(em3.hasMoreElements()){
	                   p3=(EmpModel)em3.nextElement();
	                   
	                   %>
                    <option  value="<%=p3.getQualid()%>"><%=p3.getQualname()%></option>
                    <%} %>
</select>
</td></tr><br/>
<tr><td>Marital Status</td><td><select size="1" name="mstatus">
<option value="select">-Select-</option>
<option value="Married">Married</option>
<option value="UnMarried">UnMarried</option>
</select>
</td></tr><br/>

<tr><td>Manager</td><td><select name="manager">
<option value="select">-Select-</option>
 <% CoreHash ch2=new EmpRegistrationDAO().getManager();
	             Enumeration em2=ch2.elements();
	             EmpModel p2=null;
	             while(em2.hasMoreElements()){
	                   p2=(EmpModel)em2.nextElement();
	                  
	                   %>
                    <option  value="<%=p2.getEmpid()%>"><%=p2.getManagername()%></option>
                    <%} %>
</select>
</td></tr><br/>

<tr><td>Gender</td><td><select size="1" name="gender">
<option value="select">-Select-</option>
<option value="Mail">Mail</option>
<option value="FeMail">FeMail</option>
</select>
</td></tr><br/>

<tr><td>Question</td><td><select size="1" name="question">
<option value="select">-Select-</option>
<% CoreHash ch5=new EmpRegistrationDAO().getquestionbase();
	             Enumeration em5=ch5.elements();
	             EmpModel p5=null;
	             while(em5.hasMoreElements()){
	                   p5=(EmpModel)em5.nextElement();
	                   
	                   %>
                    <option  value="<%=p5.getQuestionid()%>"><%=p5.getQuestionname()%></option>
                    <%} %>
</select>
</td></tr>
<tr><td>Answer</td><td><input type="text" name="answer" value=""></td></tr><br/>
<tr><td>Rank</td><td><input type="text" name="rank"  value="" ></td></tr><br/>
 
   <tr><td><input type="submit" name="submit" value="Submit"></td><td><input type="reset" name="clear" value="Clear"></td></tr><br/>
   
   
   </form>
   
   <script>

var frmvalidator  = new Validator("rigister");
  
  frmvalidator.addValidation("firstname","req","Please Enter First Name");
  frmvalidator.addValidation("middlename","req","Please Enter Middle Name Value");
  frmvalidator.addValidation("lastname","req","Please Enter Last Nmae");
  
  frmvalidator.addValidation("cname","dontselect=0");
    frmvalidator.addValidation("empcname","dontselect=0");
    frmvalidator.addValidation("question","dontselect=0");
    frmvalidator.addValidation("gender","dontselect=0");    
      frmvalidator.addValidation("qualification","dontselect=0");   
      frmvalidator.addValidation("mstatus","dontselect=0");
      frmvalidator.addValidation("manager","dontselect=0");      
      frmvalidator.addValidation("dname","dontselect=0");    
      frmvalidator.addValidation("disgnation","dontselect=0");     
      
    frmvalidator.addValidation("answer","req","Please Enter Answer");
   frmvalidator.addValidation("salary","req","Please Enter Salary");  
  frmvalidator.addValidation("address","req","Please Enter Address");
  frmvalidator.addValidation("emailid","req","Please Enter Email-ID");  
  frmvalidator.addValidation("photo","req","Please Enter PhotoGraph ");
  
  
</script>


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