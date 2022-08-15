<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0032)http://www.ghmc.gov.in/index.asp -->
<HTML><HEAD><TITLE>Welcome to Greater Hyderabad Municipal Corporation</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<STYLE type=text/css>BODY {
	DISPLAY: block; FONT-WEIGHT: bold; WIDTH: 100%; TEXT-INDENT: 10px; BORDER-BOTTOM: black 1px solid; TEXT-DECORATION: none
}
UNKNOWN {
	LEFT: 5px; POSITION: relative; TOP: 5px
}
.shadowcontainer {
	WIDTH: 100px; BACKGROUND-COLOR: #d1cfd0
}
.shadowcontainer .innerdiv {
	BORDER-RIGHT: gray 1px solid; PADDING-RIGHT: 6px; BORDER-TOP: gray 1px solid; PADDING-LEFT: 6px; LEFT: -5px; PADDING-BOTTOM: 6px; BORDER-LEFT: gray 1px solid; WIDTH: 255px; PADDING-TOP: 6px; BORDER-BOTTOM: gray 1px solid; POSITION: relative; TOP: -5px; HEIGHT: 81px; BACKGROUND-COLOR: white
}
UL.disc {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; LIST-STYLE-IMAGE: url(arrow.gif); PADDING-BOTTOM: 0px; PADDING-TOP: 0px
}
</STYLE>

<STYLE type=text/css>A:link {
	COLOR: #000000; TEXT-DECORATION: none
}
A:visited {
	COLOR: #000000; TEXT-DECORATION: none
}
A:hover {
	COLOR: #cc6600; TEXT-DECORATION: none
}
</STYLE>

<SCRIPT type=text/javascript>
function ow(theURL,winName,features)
{
window.open(theURL,winName,features);
}
</SCRIPT>

<SCRIPT type=text/javascript>

	/*function open_win_ack() 
	{
		window.open('polling/acknowledgenew.asp','','resizable=yes,height=300,Width=500');
	}
	function disp()
	{
document.form1.action="";
document.form1.submit();
}*/
function enlargeImage1()
{
   image1.height="300"

image1.width="300"   
}
function dropImage1()
{
   image1.height="150"
   image1.width="210"
}

function PassValues()
{
	var val = 0;
	for( i = 0; i < document.form1.r1.length; i++ )
	{
		if( document.form1.r1[i].checked == true )
			val = document.form1.r1[i].value;
			
	}
//alert( "val = " + val );
    //var holidayType = document.frmHolidayType.rdoHoliday.checked;
//alert("ssss")
    //alert("Your Vote is " + val);

	
//function count1()
//{
//	newWin = window.open('increment_gis.asp')
//	newWin.close();
	window.open('polling/acknowledgenew.asp?vote=' + val,'','resizable=yes,height=300,Width=500');
//}
	//window.opener.document.frmParent.holdyType.value = val;
	//window.opener.goToURL();
    //self.close();
}
function abcmadhu()
{
	//alert("in function gis")
	newWin = window.open('increment_gis.asp')
	newWin.close();
	window.open('tender%20pdfs/GIS_Professionals_Tender(Second%20Call).pdf','','resizable=yes,height=300,Width=500')
}

</SCRIPT>

<SCRIPT language=JavaScript>
//ow("jobmela.html","1","ScreenX=100,ScreenY=100, right=1200,left=480,top=260,height=346,Width=508,status=no,toolbar=no, menubar=no");
//ow("greetings/ugadi.html","2","ScreenX=100,ScreenY=100, right=580,left=480,top=380,height=280,Width=482,status=no,toolbar=no, menubar=no");
//ow("forums.html","1","ScreenX=100,ScreenY=100, right=750,left=550,top=300,height=312,Width=333, status=no, toolbar=no, menubar=no,");
//ow("jobmel.html","3","toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=0,width=500,height=350,left = 202,top = 34');");
//ow("bakridfrm.html","3","ScreenX=100,ScreenY=100,left=300,top=250,height=115,Width=130,status=no,toolbar=no");
//ow("enc.html","2","ScreenX=100,ScreenY=100,left=650,top=250,height=270,Width=287, status=no,toolbar=no, menubar=no");
//ow("rfq.html","1","ScreenX=100,ScreenY=150,left=250,top=250,height=220,Width=250,status=no,toolbar=no");
//var map = window.open("grievancepopup.html", "map");
window.name = "main";
</SCRIPT>

<STYLE type=text/css>#dropmenudiv {
	BORDER-RIGHT: #474747 1px solid; BORDER-TOP: #474747 1px solid; Z-INDEX: 1; FONT: 10px/18px Verdana; BORDER-LEFT: #474747 1px solid; BORDER-BOTTOM: #474747 0px solid; POSITION: absolute
}
#dropmenudiv A {
	PADDING-RIGHT: 0px; DISPLAY: block; PADDING-LEFT: 0px; FONT-WEIGHT: bold; PADDING-BOTTOM: 1px; WIDTH: 100%; TEXT-INDENT: 3px; PADDING-TOP: 1px; BORDER-BOTTOM: #474747 1px solid; TEXT-DECORATION: none
}
#dropmenudiv A:hover {
	BACKGROUND-COLOR: #4fa13d
}
#content {
	FONT: 10px verdana; TEXT-DECORATION: none; font-color: #000000
}
BODY {
	COLOR: #000000; FONT-FAMILY: verdana
}
A:link {
	COLOR: #000000
}
A:visited {
	COLOR: #000000
}
A:active {
	COLOR: #000000
}
A:hover {
	COLOR: #cc6600; TEXT-DECORATION: none
}
</STYLE>

<SCRIPT language=javascript>
function MM_openBrWindow(theURL,winName,features)
{ 
  window.open(theURL,winName,features);
}

function openDownloads()
{
newwin=window.open("../mch/downloads.asp","newwin","width=400,height=200,left=150,top=100,alwaysRaised=yes");
}

document.onmousedown=disableclick
status="Right Click Disabled"
function disableclick(e) {
if( event.button==2 )
alert("Sorry Right Click has been disabled!");
return false;
}


function chkform()
{
if (document.postmsg.userid.value=="")
{
alert("Fields marked * cannot be NULL");
document.postmsg.userid.focus();
     return false;
}
if(document.postmsg.password.value == "")
{
     alert("Fields marked * cannot be NULL ");
     document.postmsg.password.focus();
     return false;
   }
   else 
   { 
   return true;
   }
}
</SCRIPT>

<SCRIPT language=JavaScript1.2 
src="Welcome to Greater Hyderabad Municipal Corporation_files/ajlib.js"></SCRIPT>

<SCRIPT language=JavaScript1.2 
src="Welcome to Greater Hyderabad Municipal Corporation_files/ajmenu.js"></SCRIPT>

<SCRIPT type=text/javascript>

/***********************************************
* AnyLink Drop Down Menu- © Dynamic Drive (www.dynamicdrive.com)
* This notice MUST stay intact for legal us
* Visit http://www.dynamicdrive.com/ for full source code
***********************************************/

//Contents for menu 1
var menu1=new Array()
menu1[0]='<a href="ghmcparishkruthi/index.asp"><font color = "white">Grievance</font></a>'
menu1[1]='<a href="birthdeaths.asp"> <font color = "white">Birth & Death</a>'
menu1[2]='<a href="tax/taxdues.asp"> <font color = "white">Property Tax</a>'
menu1[3]='<a href="tl/index.asp"> <font color = "white">Trade License</a>'
menu1[4]='<a href="townplanning.asp"> <font color = "white">Town Planning</a>'
menu1[5]='<a href="engworks/eng.asp"> <font color = "white">Works & Tenders</a>'
menu1[6]='<a href="ucd/bplprofile.asp?status="> <font color = "white">UCD</a>'
menu1[7]='<a href="Housing/mainfrm.asp"> <font color = "white">Housing</a>'
menu1[8]='<a href="advertisements.asp"> <font color = "white">Advertisements</a>'
menu1[9]='<a href="sports/sportsstatic.asp"> <font color = "white">Parks & Playgrounds</a>'
menu1[10]='<a href="functionhall/home.asp"> <font color = "white">Hari Hara Kala Bhavan</a>'
menu1[11]='<a href="IPS/" target="blank"> <font color = "white">Parking System</a>'
//menu1[11]='<a href="http://61.17.251.45/MCHLatest/default.aspx" target="blank"> <font color = "white">AVTS</a>'
menu1[12]='<a href="http://121.243.139.90/swm" target="blank"> <font color = "white">Sanitation</a>'
//menu1[13]='<a href="http://61.17.251.45/website/default.html" target="blank"> <font color = "white">GIS</a>'

//Contents for menu 2, and so on
var menu2=new Array()
menu2[0]='<a href="ghmcparishkruthi/Grvsearch.asp"><font color = "white">Grievance</a>'
menu2[1]='<a href="births/birthssearch.asp"><font color = "white">Birth</a>'
menu2[2]='<a href="deaths/deathssearch.asp"><font color = "white">Death</a>'
menu2[3]='<a href="tax/taxdueshome_new.asp"><font color = "white">Property Tax</a>'
menu2[4]='<a href="tl/tlsearchicici.asp"><font color = "white">Trade License</a>'
menu2[5]='<a href="approvedplans/brow_acad_res_struc.asp"><font color = "white">Building Permissions</a>'
menu2[6]='<a href="engworks/engworksearchreport_mis.asp"><font color = "white">Works & Tenders</a>'
menu2[7]='<a href="advt/hord.asp"><font color = "white">Advertisements</a>'

//Contents for menu 3, and so on

var menu3=new Array()

//menu3[0]='<a href="tax/taxdueshomeICICI.asp"><font color = "white">Property Tax</a>'
menu3[0]='<a href="tax/ptptinsearchonlinepayrep.asp"><font color = "white">Property Tax</a>'
menu3[1]='<a href="births/birthssearch.asp"><font color = "white">Birth</a>'
menu3[2]='<a href="deaths/deathssearch.asp"><font color = "white">Death</a>'

//Contents for menu 4, and so on
var menu4=new Array()
menu4[0]='<a href="fundyourparks/index.asp" target="blank"><font color = "white">Fund Your Park</a>'
menu4[1]='<a href="IndirammaServices/index2.asp" target="blank"><font color = "white">IndirammaPadhakam</a>'
menu4[2]='<a href="ghmcservices/index2.asp" target="blank"><font color = "white">Aasara</a>'
menu4[3]='<a href="election1/indexnew.asp" target="blank"><font color = "white">Election</a>'
menu4[4]='<a href="treeplantation/index.asp" target="blank"><font color = "white">Tree Plantation</a>'
menu4[5]='<a href="fundcitynew.asp"><font color = "white">Fund Your City</a>'
menu4[6]='<a href="CMTC/index.asp" target="blank"><font color = "white">CMTC</a>'
menu4[7]='<a href="ilook/home.asp"><font color = "white">iLook</a>'

//Contents for menu 5, and so on
var menu5=new Array()
menu5[0]='<a href="faqs.asp"><font color = "white">FAQs</a>'
menu5[1]='<a href="tendernotice.asp"><font color = "white">Tender Notifications</a>'
menu5[2]='<a href="mchphotogalary/mchphotogalary.asp"><font color = "white">Photogallery</a>'
menu5[3]='<a href="mch/awardlist.asp"><font color = "white">Awards</a>'
menu5[4]='<a href="citizencharter/cc.asp"><font color = "white">Citizen Charter</a>'
menu5[5]='<a href="hyd/hydhistory.asp"><font color = "white">Hyderabad History</a>'
menu5[6]='<a href="mch/help.asp"><font color = "white">Help Desk</a>'
menu5[7]='<a href="mch/organization.asp"><font color = "white">Organization Chart</a>'
menu5[8]='<a href="itdept/itdepartment.asp"><font color = "white">IT Staff</a>'
menu5[9]='<a href="mainpage.asp?status=1"><font color = "white">Other Services</a>'
menu5[10]='<a href="sitemap.asp"><font color = "white">Site Map</a>'
		
var menuwidth='165px' //default menu width
var menubgcolor='#0066CC'  //menu bgcolor
var disappeardelay=250  //menu disappear speed onMouseout (in miliseconds)
var hidemenu_onclick="yes" //hide menu when user clicks within menu?

/////No further editting needed

var ie4=document.all
var ns6=document.getElementById&&!document.all

if (ie4||ns6)
document.write('<div id="dropmenudiv" style="visibility:hidden;width:'+menuwidth+';background-color:'+menubgcolor+'" onMouseover="clearhidemenu()" onMouseout="dynamichide(event)"></div>')

function getposOffset(what, offsettype){
var totaloffset=(offsettype=="left")? what.offsetLeft : what.offsetTop;
var parentEl=what.offsetParent;
while (parentEl!=null){
totaloffset=(offsettype=="left")? totaloffset+parentEl.offsetLeft : totaloffset+parentEl.offsetTop;
parentEl=parentEl.offsetParent;
}
return totaloffset;
}


function showhide(obj, e, visible, hidden, menuwidth){
if (ie4||ns6)
dropmenuobj.style.left=dropmenuobj.style.top="-500px"
if (menuwidth!=""){
dropmenuobj.widthobj=dropmenuobj.style
dropmenuobj.widthobj.width=menuwidth
}
if (e.type=="click" && obj.visibility==hidden || e.type=="mouseover")
obj.visibility=visible
else if (e.type=="click")
obj.visibility=hidden
}

function iecompattest(){
return (document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body
}

function clearbrowseredge(obj, whichedge){
var edgeoffset=0
if (whichedge=="rightedge"){
var windowedge=ie4 && !window.opera? iecompattest().scrollLeft+iecompattest().clientWidth-15 : window.pageXOffset+window.innerWidth-15
dropmenuobj.contentmeasure=dropmenuobj.offsetWidth
if (windowedge-dropmenuobj.x < dropmenuobj.contentmeasure)
edgeoffset=dropmenuobj.contentmeasure-obj.offsetWidth
}
else{
var topedge=ie4 && !window.opera? iecompattest().scrollTop : window.pageYOffset
var windowedge=ie4 && !window.opera? iecompattest().scrollTop+iecompattest().clientHeight-15 : window.pageYOffset+window.innerHeight-18
dropmenuobj.contentmeasure=dropmenuobj.offsetHeight
if (windowedge-dropmenuobj.y < dropmenuobj.contentmeasure){ //move up?
edgeoffset=dropmenuobj.contentmeasure+obj.offsetHeight
if ((dropmenuobj.y-topedge)<dropmenuobj.contentmeasure) //up no good either?
edgeoffset=dropmenuobj.y+obj.offsetHeight-topedge
}
}
return edgeoffset
}

function populatemenu(what){
if (ie4||ns6)
dropmenuobj.innerHTML=what.join("")
}


function dropdownmenu(obj, e, menucontents, menuwidth){
if (window.event) event.cancelBubble=true
else if (e.stopPropagation) e.stopPropagation()
clearhidemenu()
dropmenuobj=document.getElementById? document.getElementById("dropmenudiv") : dropmenudiv
populatemenu(menucontents)

if (ie4||ns6){
showhide(dropmenuobj.style, e, "visible", "hidden", menuwidth)

dropmenuobj.x=getposOffset(obj, "left")
dropmenuobj.y=getposOffset(obj, "top")
dropmenuobj.style.left=dropmenuobj.x-clearbrowseredge(obj, "rightedge")+"px"
dropmenuobj.style.top=dropmenuobj.y-clearbrowseredge(obj, "bottomedge")+obj.offsetHeight+"px"
}

return clickreturnvalue()
}

function clickreturnvalue(){
if (ie4||ns6) return false
else return true
}

function contains_ns6(a, b) {
while (b.parentNode)
if ((b = b.parentNode) == a)
return true;
return false;
}

function dynamichide(e){
if (ie4&&!dropmenuobj.contains(e.toElement))
delayhidemenu()
else if (ns6&&e.currentTarget!= e.relatedTarget&& !contains_ns6(e.currentTarget, e.relatedTarget))
delayhidemenu()
}

function hidemenu(e){
if (typeof dropmenuobj!="undefined"){
if (ie4||ns6)
dropmenuobj.style.visibility="hidden"
}
}

function delayhidemenu(){
if (ie4||ns6)
delayhide=setTimeout("hidemenu()",disappeardelay)
}
/*
function cc()
	{
	var servertime = document.getElementById("servertime").value
	alert("xxxx")
	alert(servertime)
	document.getElementById("displaytime").innerText = servertime
	var x = servertime.substr(0,2)
	alert(x)
	var d = Date()
	var h = d.setHours(parse(x));
	alert(h + "mmmm")

	var hours=servertime.getHours()
var minutes=servertime.getMinutes()
var seconds=servertime.getSeconds()
alert(hours)
alert(minutes)
var dn="PM"
if (hours<12)
dn="AM"
if (hours>12)
hours=hours-12
if (hours==0)
hours=12
if (minutes<=9)
minutes="0"+minutes
if (seconds<=9)
seconds="0"+seconds
var ctime=hours+":"+minutes+":"+seconds+" "+dn
thelement.innerHTML="<b style='font-size:10;color:white;font-face:Verdana'>"+ctime+"</b>"+"&nbsp;"
setTimeout("show2()",1000)
	}
	*/
function clearhidemenu(){
if (typeof delayhide!="undefined")
clearTimeout(delayhide)
}

if (hidemenu_onclick=="yes")
document.onclick=hidemenu

</SCRIPT>

<META 
content="Register Online Grievance, Know Your Property Tax Dues, Pay your Property tax online, request for birth and death certificates, online birth and death details, building permissions, Engineering works, Advertisement boards, trade license, parks and Playground information, Housing and senior citizens information." 
name=description><LINK 
href="Welcome to Greater Hyderabad Municipal Corporation_files/GHMC1.css" 
type=text/css rel=stylesheet><LINK href="/favicon.ico" rel="shortcut icon">
<META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
<BODY bottomMargin=0 leftMargin=0 topMargin=0 onload=cc() rightMargin=0>
<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center bgColor=#0066cc 
border=0>
  <TBODY>
  <TR>
    <TD width="22%">&nbsp;
      <OBJECT 
      codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0 
      height=100 width=125 classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000><PARAM NAME="movie" VALUE="images/2.swf"><PARAM NAME="wmode" VALUE="transparent">
                              <embed src="images/2.swf" quality="high" 
      pluginspage="http://www.macromedia.com/go/getflashplayer" 
      type="application/x-shockwave-flash" width="125" 
      height="100"></embed></OBJECT></TD>
    <TD width="46%">
      <DIV align=center>
      <OBJECT 
      codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0 
      height=100 width=460 classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000><PARAM NAME="movie" VALUE="images/3.swf"><PARAM NAME="wmode" VALUE="transparent">
                                    <embed src="images/3.swf" quality="high" 
      pluginspage="http://www.macromedia.com/go/getflashplayer" 
      type="application/x-shockwave-flash" width="460" 
      height="100"></embed></OBJECT></DIV></TD>
    <TD width="32%">
      <DIV align=right>
      <OBJECT 
      codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0 
      height=100 width=300 classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000><PARAM NAME="movie" VALUE="images/4.swf"><PARAM NAME="wmode" VALUE="transparent">
                                    <embed src="images/4.swf" quality="high" 
      pluginspage="http://www.macromedia.com/go/getflashplayer" 
      type="application/x-shockwave-flash" width="300" 
      height="100"></embed></OBJECT></DIV></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center bgColor=#4fa13d 
border=0>
  <TBODY>
  <TR>
    <TD width="8%" height=19>
      <DIV align=center><STRONG><A style="TEXT-DECORATION: none" 
      href="http://www.ghmc.gov.in/index.asp" target=_self><FONT face=verdana 
      color=#ffffff size=1>Home</FONT></A></STRONG></DIV></TD>
    <TD width="10%">
      <DIV align=center><A 
      onmouseover="dropdownmenu(this, event, menu1, '150px')" 
      style="TEXT-DECORATION: none" onclick="return clickreturnvalue()" 
      onmouseout=delayhidemenu() href="http://www.ghmc.gov.in/default.htm"><FONT 
      face=verdana color=#ffffff size=1><STRONG>GHMC Services 
      </STRONG></FONT></A><FONT face=verdana size=2></FONT></DIV></TD>
    <TD width="11%">
      <DIV align=center><A 
      onmouseover="dropdownmenu(this, event, menu2, '150px')" 
      style="TEXT-DECORATION: none" onclick="return clickreturnvalue()" 
      onmouseout=delayhidemenu() href="http://www.ghmc.gov.in/default.htm"><FONT 
      face=verdana color=#ffffff size=1><STRONG>Search GHMC 
      </STRONG></FONT></A><FONT face=verdana size=2></FONT></DIV></TD>
    <TD width="12%">
      <DIV align=center><A 
      onmouseover="dropdownmenu(this, event, menu3, '150px')" 
      style="TEXT-DECORATION: none" onclick="return clickreturnvalue()" 
      onmouseout=delayhidemenu() href="http://www.ghmc.gov.in/default.htm"><FONT 
      face=verdana color=#ffffff size=1><STRONG>Online Payments 
      </STRONG></FONT></A><FONT face=verdana size=2></FONT></DIV></TD>
    <TD width="13%">
      <DIV align=center><A 
      onmouseover="dropdownmenu(this, event, menu4, '150px')" 
      style="TEXT-DECORATION: none" onclick="return clickreturnvalue()" 
      onmouseout=delayhidemenu() href="http://www.ghmc.gov.in/default.htm"><FONT 
      face=verdana color=#ffffff size=1><STRONG>GHMC Offerings 
      </STRONG></FONT></A><FONT face=verdana size=2></FONT></DIV></TD>
    <TD width="11%">
      <DIV align=center><A 
      onmouseover="dropdownmenu(this, event, menu5, '150px')" 
      style="TEXT-DECORATION: none" onclick="return clickreturnvalue()" 
      onmouseout=delayhidemenu() href="http://www.ghmc.gov.in/default.htm"><FONT 
      face=verdana color=#ffffff size=1><STRONG>Other Info</STRONG> 
      </FONT></A><FONT face=verdana size=2></FONT></DIV></TD>
    <TD width="11%">
      <DIV align=center><A style="TEXT-DECORATION: none" 
      href="http://www.ghmc.gov.in/mch/keycontacts.asp"><STRONG><FONT 
      face=verdana color=#ffffff size=1>Contact Us</FONT></STRONG></A></DIV></TD>
    <TD width="24%">
      <DIV align=right><!--<input type="hidden" name="servertime" id="servertime" >
	<span id="displaytime"></span> -->
      <SCRIPT language=javascript type=text/javascript>
/* Visit http://www.yaldex.com/ for full source code
and get more free JavaScript, CSS and DHTML scripts! */


var mydate=new Date()
var year=mydate.getYear()
if (year < 1000)
year+=1900
var day=mydate.getDay()
var month=mydate.getMonth()
var daym=mydate.getDate()
if (daym<10)
daym="0"+daym
var dayarray=new Array("Sun","Mon","Tue","Wed","Thu","Fri","Sat")
var montharray=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
document.write("<small><b style='font-size:10;color:white;font-face:Verdana'><b>"+dayarray[day]+", "+montharray[month]+" "+daym+", "+year+"</b></font></small>")
</SCRIPT>
      <SPAN id=tick2></SPAN>
      <SCRIPT language=javascript type=text/javascript>
<!--
/* Visit http://www.yaldex.com/ for full source code
and get more free JavaScript, CSS and DHTML scripts! */
function show2(){
if (!document.all&&!document.getElementById)
return
thelement=document.getElementById? document.getElementById("tick2"): document.all.tick2
var Digital=new Date()
var hours=Digital.getHours()
var minutes=Digital.getMinutes()
var seconds=Digital.getSeconds()
var dn="PM"
if (hours<12)
dn="AM"
if (hours>12)
hours=hours-12
if (hours==0)
hours=12
if (minutes<=9)
minutes="0"+minutes
if (seconds<=9)
seconds="0"+seconds
var ctime=hours+":"+minutes+":"+seconds+" "+dn
thelement.innerHTML="<b style='font-size:10;color:white;font-face:Verdana'>"+ctime+"</b>"+"&nbsp;"
setTimeout("show2()",1000)
}
window.onload=show2 

//-->
</SCRIPT>
      &nbsp; </DIV></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width=285>
      <TABLE height=75 cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD 
          background="Welcome to Greater Hyderabad Municipal Corporation_files/blackLine1.gif">
            <TABLE height=75 cellSpacing=0 cellPadding=0 width="100%" 
              border=0><TBODY>
              <TR>
                <TD vAlign=top 
                background="Welcome to Greater Hyderabad Municipal Corporation_files/blackLine1.gif">
                  <TABLE height=307 cellSpacing=0 cellPadding=0 width="98%" 
                  bgColor=#ffffff border=0>
                    <TBODY>
                    <TR>
                      <TD vAlign=top width="100%" colSpan=2 height=259>
                        <TABLE height=256 cellSpacing=1 cellPadding=1 width=237 
                        align=center border=0>
                          <TBODY>
                          <TR>
                            <TD vAlign=top height=150>
                              <DIV align=center><STRONG><FONT face=verdana 
                              size=1><STRONG>GHMC 
                              News</STRONG></FONT></STRONG>&nbsp;&nbsp;&nbsp; 
                              </DIV>
                              <TABLE 
                              style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid; BORDER-COLLAPSE: collapse" 
                              borderColor=#000000 height=150 cellSpacing=0 
                              cellPadding=0 width=220 align=center border=1>
                                <TBODY>
                                <TR>
                                <TD vAlign=center width=210 height=150><IMG 
                                height=150 
                                src="Welcome to Greater Hyderabad Municipal Corporation_files/148.gif" 
                                width=220 align=middle border=0 name=image1> 
                                </TD></TR></TBODY></TABLE></TD>
                            <TD>&nbsp;</TD></TR>
                          <TR>
                            <TD colSpan=2 height=16>
                              <DIV align=center><FONT face=verdana 
                              size=2><IFRAME name=prs 
                              src="Welcome to Greater Hyderabad Municipal Corporation_files/dispblt.htm" 
                              frameBorder=0 width=240 scrolling=no 
                              height=150>hai 
                                to not Ie end users</IFRAME></FONT></DIV>
                              <DIV align=center></DIV></TD></TR>
                          <TR>
                            <TD colSpan=2 height=16>
                              <DIV align=right><A 
                              href="http://www.ghmc.gov.in/News_bulliten/news_view.asp" 
                              target=_self><FONT face=verdana color=#0033cc 
                              size=1><STRONG>Previous News Click 
                              Here</STRONG></FONT></A></DIV></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD vAlign=top colSpan=2></TD></TR>
                    <TR>
                      <TD vAlign=top colSpan=2>
                        <TABLE cellSpacing=0 cellPadding=0 width=242 
                        align=center border=0>
                          <TBODY>
                          <TR>
                            <TD colSpan=2>
                              <DIV align=center><FONT face=verdana color=#cc6600 
                              size=1><STRONG>&nbsp;Opinion Poll 
                              </STRONG></FONT></DIV></TD></TR>
                          <TR align=middle borderColor=#ecf0f0>
                            <TD colSpan=2><STRONG><FONT 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              size=1>Support to Senior Citizens through "AASARA" 
                              By GHMC?</FONT></STRONG></TD></TR>
                          <TR borderColor=#ecf0f0>
                            <TD width=111><IMG height=86 
                              src="Welcome to Greater Hyderabad Municipal Corporation_files/poll.jpg" 
                              width=82></TD>
                            <TD align=middle width=145>
                              <TABLE cellSpacing=0 cellPadding=2 width="100%" 
                              border=0>
                                <FORM name=form1>
                                <TBODY>
                                <TR>
                                <TD width="15%"><FONT color=#ffffcc 
                                size=2><STRONG><INPUT id=good type=radio CHECKED 
                                value=Yes name=r1> </STRONG></FONT></TD>
                                <TD width="85%"><FONT face=verdana size=1><LABEL 
                                for=good>Good</LABEL> </FONT></TD></TR>
                                <TR>
                                <TD><FONT color=#ffffcc size=2><STRONG><INPUT 
                                id=average type=radio value=No name=r1> 
                                </STRONG></FONT></TD>
                                <TD><FONT face=verdana size=1><LABEL 
                                for=average>Average</LABEL> </FONT></TD></TR>
                                <TR>
                                <TD><FONT color=#ffffcc size=2><STRONG><INPUT 
                                id=csay type=radio value=Cs name=r1> 
                                </STRONG></FONT></TD>
                                <TD><FONT size=1><LABEL for=csay>Poor</LABEL> 
                                </FONT></TD></TR>
                                <TR>
                                <TD colSpan=2><FONT color=#ffffcc 
                                size=2><STRONG></STRONG></FONT>
                                <DIV align=left><STRONG><!--<img src="images/submit1.jpg" onClick="open_win_ack() " width="90" height="25" border="0">--><!--<INPUT type="submit" name="btnSubmit" value="Submit" onClick="javascript:PassValues()">--><!--							<INPUT type="submit" name="btnSubmit" value="Submit" onClick="javascript:PassValues()">--><INPUT 
                                onclick=javascript:PassValues() type=image 
                                height=25 width=90 
                                src="Welcome to Greater Hyderabad Municipal Corporation_files/submit1.jpg" 
                                name=btnSubmit> 
                                </STRONG></DIV></TD></TR></FORM></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD vAlign=top colSpan=2></TD></TR>
                    <TR>
                      <TD colSpan=2></TD></TR>
                    <TR>
                      <TD colSpan=2 
            height=2></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
    <TD vAlign=top width=708>
      <TABLE cellSpacing=0 cellPadding=0 width=720 border=0>
        <TBODY>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD vAlign=center align=left width=698 height=16><FONT 
                  color=#003399><STRONG><FONT size=1>
                  <MARQUEE scrollDelay=250><FONT color=#cc6600>GHMC Call Center 
                  Toll Free Number 155304 , Other Phones 040-23221978, e-Seva 
                  Toll Free Number 1100, Other Phones 
                  040-27071190</FONT></MARQUEE></FONT></STRONG><FONT 
                  size=1></FONT></FONT></TD>
                <TD width=10>
                  <DIV align=right></DIV></TD></TR>
              <TR vAlign=top>
                <TD colSpan=2 height=93>
                  <DIV align=justify><FONT 
                  face="Verdana, Arial, Helvetica, sans-serif" 
                  size=2><STRONG><FONT size=1>Municipal 
                  History</FONT></STRONG></FONT> <FONT 
                  face="Verdana, Arial, Helvetica, sans-serif">The 
                  Kotwal-e-Baldia,the City Police Commissioner used to look 
                  after the Municipal Administration. In the year 1869, Sir 
                  salar jung-I the then Nizam has constituted the Department of 
                  Municipal and Road Maintenance and a Municipal Commissioner 
                  was appointed for Hyderabad Board and Chadarghat Board. These 
                  two Boards were amalgamated in the year 1933 into a 
                  Corporation and given statutory status under the Hyderabad 
                  Municipal Act. In 1950,two separate corporations were created 
                  under the Hyderabad Corporation Act,1950,one for the city of 
                  Hyderabad and another for the city of Secunderabad.These two 
                  Corporations were again merged into a single Corporation by 
                  the Hyderabad Municipal Corporation Act,1955 Hyderabad the 
                  capital of Andhra Pradesh,..</FONT><FONT 
                  face="Verdana, Arial, Helvetica, sans-serif" size=1><STRONG><A 
                  href="http://www.ghmc.gov.in/greaterhyd.asp" 
                  target=_self><FONT 
                  color=#000000>More</FONT></A></STRONG></FONT> 
              </DIV></TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD vAlign=top>
            <TABLE cellSpacing=0 cellPadding=0 border=0>
              <TBODY>
              <TR>
                <TD width=705 colSpan=3>
                  <DIV align=center>
                  <OBJECT 
                  codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0 
                  height=112 width=697 
                  classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000><PARAM NAME="movie" VALUE="images/All_Modules.swf"><PARAM NAME="wmode" VALUE="transparent">
                                                                                 
                     <embed src="images/All_Modules.swf" quality="high" 
                  pluginspage="http://www.macromedia.com/go/getflashplayer" 
                  type="application/x-shockwave-flash" width="697" 
                  height="112"></embed></OBJECT></DIV></TD></TR>
              <TR>
                <TD colSpan=3>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD width=217 height=24>
                        <DIV align=left><FONT face=verdana color=#cc3300 
                        size=1><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT 
                        color=#cc6600>Services &amp; 
                        Offerings</FONT></STRONG></FONT></DIV></TD>
                      <TD width=294><FONT face=verdana color=#cc3300 
                        size=1><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT 
                        color=#cc6600>Value Added 
                        Information</FONT></STRONG></FONT></TD>
                      <TD><FONT face=verdana color=#cc3300 
                        size=1><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT 
                        color=#cc6600>Downloads</FONT></STRONG></FONT></TD></TR>
                    <TR>
                      <TD vAlign=top>
                        <UL class=disc>
                          <LI>
                          <DIV align=left><STRONG><A 
                          href="http://www.ghmc.gov.in/tax/taxdues.asp" 
                          target=_self><FONT size=1>Property 
                          Tax</FONT></A></STRONG> </DIV><BR>
                          <LI>
                          <DIV align=left><A 
                          href="http://www.ghmc.gov.in/birthdeaths.asp"><FONT 
                          size=1><STRONG>Birth &amp; Death</STRONG></FONT></A> 
                          </DIV><BR>
                          <LI>
                          <DIV align=left><STRONG><FONT size=1><STRONG><A 
                          href="http://www.ghmc.gov.in/ghmcparishkruthi/index.asp">Register 
                          Grievances</A></STRONG></FONT></STRONG></DIV><FONT 
                          size=1><A 
                          href="http://www.ghmc.gov.in/GHMCServices/index2.asp" 
                          target=_blank></A></FONT><A 
                          href="http://www.ghmc.gov.in/GHMCServices/index2.asp" 
                          target=_blank><BR></A>
                          <LI>
                          <DIV align=left><STRONG><FONT size=1><A 
                          href="http://www.ghmc.gov.in/discussion/threads.asp">Citizen's 
                          Forum</A></FONT></STRONG> </DIV><BR>
                          <LI>
                          <DIV align=left><FONT 
                          face="Arial, Helvetica, sans-serif">&nbsp;</FONT><FONT 
                          size=1><STRONG><A 
                          href="http://www.ghmc.gov.in/ilook/home.asp" 
                          target=_self><FONT 
                          size=1>iLook</FONT></A></STRONG></FONT><FONT 
                          size=1><STRONG></STRONG></FONT></DIV><BR>
                          <LI>
                          <DIV align=left><FONT size=1><STRONG><A 
                          href="http://www.ghmc.gov.in/fundyourparks/index.asp" 
                          target=_blank>Fund Your Parks</A><A 
                          href="http://www.ghmc.gov.in/esevacenters.asp" 
                          target=_self></A></STRONG></FONT></DIV><BR>
                          <LI>
                          <DIV align=left><STRONG><A 
                          href="http://www.ghmc.gov.in/GHMCServices/index2.asp" 
                          target=_blank><FONT 
                          size=1><STRONG>Aasara</STRONG></FONT></A></STRONG></DIV><BR>
                          <LI>
                          <DIV align=left><STRONG><FONT size=1><STRONG><A 
                          href="http://203.199.178.95:8080/PMS/servlet/MainController?mode=ALLPENDINGPETITIONS" 
                          target=_blank><FONT size=1>Petition Monitoring 
                          System</FONT></A></STRONG></FONT></STRONG></DIV><BR>
                          <LI>
                          <DIV align=left><STRONG><A 
                          href="http://www.ghmc.gov.in/hyd/visitplacesnew.asp" 
                          target=_self><FONT size=1>Visiting 
                          Places</FONT></A></STRONG></DIV></LI></UL></TD>
                      <TD vAlign=top noWrap>
                        <UL class=disc>
                          <LI>
                          <DIV align=left><A 
                          href="http://www.ghmc.gov.in/Newsite_Update/view_category.asp" 
                          target=_blank><FONT size=1><STRONG>PinPoint Programme 
                          </STRONG></FONT></A><IMG height=16 
                          src="Welcome to Greater Hyderabad Municipal Corporation_files/new12.gif" 
                          width=33></DIV><BR>
                          <LI>
                          <DIV align=left><A 
                          href="http://www.ghmc.gov.in/election1/loksabha.pdf" 
                          target=_blank><FONT size=1><STRONG>Ex-officio 
                          Members</STRONG></FONT></A></DIV><BR>
                          <LI>
                          <DIV align=left><A 
                          href="http://www.ghmc.gov.in/election1/Contractors_Registration_Application.pdf" 
                          target=_blank><FONT size=1><STRONG>Contractors 
                          Application Form</STRONG></FONT>(Class 
                          1,2,3,4,5)</A></DIV><BR>
                          <LI>
                          <DIV align=left><A 
                          href="http://www.ghmc.gov.in/election1/knowurassembly_const.asp"><FONT 
                          size=1><STRONG>Know your Assembly 
                          Constituency</STRONG></FONT></A></DIV><BR>
                          <LI>
                          <DIV align=left><A 
                          href="http://www.ghmc.gov.in/Townplanning/lrssearch.asp"><FONT 
                          size=1><STRONG>Know LRS 
                          Status</STRONG></FONT></A><STRONG><FONT size=1> 
                          ,</FONT></STRONG> <A 
                          href="http://121.243.139.77/BPSportal/default.aspx"><FONT 
                          size=1><STRONG>Know BPS 
                          Status</STRONG></FONT></A><STRONG><FONT 
                          size=1></FONT></STRONG></DIV><FONT size=1><BR>
                          <LI>
                          <DIV align=left><FONT size=1><STRONG><A 
                          href="http://www.ghmc.gov.in/tender%20pdfs/Final%20Delimitation_Form_VI.pdf" 
                          target=_blank><FONT size=1>Final Publication of GHMC 
                          Wards_Form VI</FONT> </A></STRONG><STRONG><A 
                          href="http://www.ghmc.gov.in/tendernotice.asp" 
                          target=_self></A></STRONG><STRONG><FONT 
                          size=1></FONT></STRONG></FONT></DIV><BR>
                          <LI>
                          <DIV align=left><STRONG><FONT size=1><STRONG><A 
                          href="http://www.ghmc.gov.in/advt/advtact.asp" 
                          target=_self>GHMC Act 1955</A> &amp; <A 
                          href="http://www.ghmc.gov.in/faqs.asp" 
                          target=_self>FAQ's</A></STRONG></FONT></STRONG></DIV><BR>
                          <LI>
                          <DIV align=left><STRONG><A 
                          href="http://www.ghmc.gov.in/tender%20pdfs/Structural%20Engineer%20List.pdf" 
                          target=_blank><FONT size=1>List of Licensed Structural 
                          Engineer in GHMC</FONT></A><A 
                          href="http://www.ghmc.gov.in/webreports.asp" 
                          target=_self><FONT color=#000000 size=1> </FONT></A><A 
                          href="http://www.ghmc.gov.in/hyd/visitplacesnew.asp" 
                          target=_self></A></STRONG></DIV><BR>
                          <LI>
                          <DIV align=left><STRONG><A 
                          href="http://www.ghmc.gov.in/RTInfo/grievance.asp" 
                          target=_self><FONT size=1>Right to 
                          Information</FONT></A> <FONT size=1>&amp; <A 
                          href="http://www.ghmc.gov.in/includes/RTIacts[1].pdf" 
                          target=_self>RTI 
                          Details</A></FONT></STRONG></DIV></FONT></LI></UL></TD>
                      <TD vAlign=top width=186>
                        <UL class=disc>
                          <LI>
                          <DIV align=left><STRONG><A 
                          href="http://www.ghmc.gov.in/tendernotice.asp" 
                          target=_self><FONT size=1>Tender 
                          Notifications</FONT></A></STRONG></DIV><BR>
                          <LI>
                          <DIV align=left><FONT size=1><STRONG><A 
                          href="http://www.ghmc.gov.in/cdp/default.asp" 
                          target=_self><FONT size=1>City Development 
                          Plan</FONT></A><A 
                          href="http://www.ghmc.gov.in/Townplanning/lrssearch.asp" 
                          target=_self></A></STRONG></FONT></DIV><BR>
                          <LI>
                          <DIV align=left><FONT size=1><A 
                          href="http://www.ghmc.gov.in/GHMC%20Budget2009-10.ppt" 
                          target=_blank><FONT size=1><STRONG>GHMC 2009-10 
                          Budget</STRONG></FONT></A></FONT></DIV>
                          <DIV align=left></DIV><BR>
                          <LI>
                          <DIV align=left><STRONG><FONT size=1><A 
                          href="http://www.ghmc.gov.in/advt/Advthome.asp">Downloads 
                          Forms</A></FONT></STRONG></DIV><BR>
                          <LI><STRONG><FONT size=1><A 
                          href="http://www.ghmc.gov.in/applications/default.asp">Application 
                          Forms</A></FONT><FONT size=1></FONT></STRONG><BR><BR>
                          <LI>
                          <DIV align=left><FONT size=1><STRONG><A 
                          href="http://www.ghmc.gov.in/mainpage.asp?status=4">Emergency 
                          Services</A></STRONG></FONT><BR></DIV><BR>
                          <LI>
                          <DIV align=left></DIV><STRONG><A class=dd 
                          href="http://www.ghmc.gov.in/mchphotogalary/mchphotogalary.asp" 
                          target=_blank><FONT size=1>Photo Gallery 
                          </FONT></A></STRONG><BR><BR>
                          <LI>
                          <DIV align=left><STRONG><A 
                          href="http://www.ghmc.gov.in/hyd/hydmap.asp"><FONT 
                          size=1><STRONG>City Map</STRONG></FONT></A><A 
                          href="http://www.ghmc.gov.in/webreports.asp" 
                          target=_self></A><A 
                          href="http://www.ghmc.gov.in/esevacenters.asp" 
                          target=_self></A></STRONG></DIV></LI></UL></TD></TR></TBODY></TABLE></TD></TR>
              <TR vAlign=top>
                <TD 
  colSpan=3>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE height=44 cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD 
    background="Welcome to Greater Hyderabad Municipal Corporation_files/blackdots.gif" 
    height=28>
      <DIV align=center><A href="http://210.212.212.115/instaxx/"><FONT 
      face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff 
      size=1><STRONG><FONT 
      color=#000000>&nbsp;Instaxx</FONT></STRONG></FONT></A><FONT 
      face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff 
      size=1><STRONG><FONT color=#000000><STRONG><FONT 
      face="Verdana, Arial, Helvetica, sans-serif" 
      size=1>&nbsp;&nbsp;&nbsp;&nbsp;l&nbsp;&nbsp;&nbsp;&nbsp;</FONT></STRONG></FONT></STRONG><A 
      href="http://www.ghmc.gov.in/fundcitynew.asp"><STRONG><FONT 
      color=#000000>Fund Your City<FONT 
      face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff 
      size=1><STRONG><STRONG><FONT face="Verdana, Arial, Helvetica, sans-serif" 
      size=1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT></STRONG></STRONG></FONT></FONT></STRONG></A><STRONG><FONT 
      color=#000000><STRONG><FONT face="Verdana, Arial, Helvetica, sans-serif" 
      size=1>l&nbsp;&nbsp;&nbsp;&nbsp;</FONT></STRONG></FONT></STRONG></FONT><FONT 
      color=#000000><A href="http://mail.ghmc.gov.in/"><FONT 
      face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff 
      size=1><STRONG><FONT 
      color=#000000>E-Mail</FONT></STRONG></FONT></A>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG><FONT 
      face="Verdana, Arial, Helvetica, sans-serif" size=1> l</FONT></STRONG> 
      &nbsp;</FONT>&nbsp;&nbsp;<FONT color=#000000><FONT 
      face="Verdana, Arial, Helvetica, sans-serif"><STRONG><FONT size=1><A 
      href="http://www.ghmc.gov.in/mch/organization.asp"><FONT 
      face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff 
      size=1><STRONG><FONT color=#000000>Organization 
      Chart</FONT></STRONG></FONT></A>&nbsp;&nbsp;&nbsp;&nbsp;l</FONT></STRONG></FONT></FONT><FONT 
      color=#000000><FONT color=#000000><FONT 
      face="Verdana, Arial, Helvetica, sans-serif"><STRONG><FONT size=1><FONT 
      face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff 
      size=1><STRONG><FONT color=#000000>&nbsp;<A 
      href="http://www.ghmc.gov.in/sitemap.asp"><FONT 
      face="Verdana, Arial, Helvetica, sans-serif"><STRONG><FONT size=1><FONT 
      face="Verdana, Arial, Helvetica, sans-serif" color=#ffffff 
      size=1><STRONG><FONT 
      color=#000000>Sitemap</FONT></STRONG></FONT></FONT></STRONG></FONT></A><FONT 
      face="Verdana, Arial, Helvetica, sans-serif"><STRONG><FONT 
      size=1>&nbsp;</FONT></STRONG></FONT></FONT></STRONG></FONT></FONT></STRONG></FONT></FONT></FONT></DIV></TD></TR>
  <TR>
    <TD>
      <DIV align=center>Copyright © 2010 <A 
      href="http://www.ghmc.gov.in/itdept/itdept.asp"><FONT 
      face="Verdana, Arial, Helvetica, sans-serif" color=#000000 size=1>GHMC (IT 
      Dept)</FONT></A>. All rights reserved. (Best viewed with IE Ver 7.0 and 
      Netscape Ver 8 and Firefox Ver 1.8 or with a resolution of 1024x768.) 
      </DIV></TD></TR></TBODY></TABLE>
<SCRIPT type=text/javascript>
//var b=0;
function abcclick()
{
    //alert(a+"Hiiii");	
	//newWin = window.open('electionpop.html')
	newWin = window.open('election1/incrementnew.asp')
	newWin.close();
	//window.open('tender%20pdfs/IT_Professionals_Tender(second%20call).pdf','','resizable=yes,height=300,Width=500')
}
</SCRIPT>
<MAP name=Map11><AREA shape=RECT coords=345,5,605,27 
  href="http://www.ghmc.gov.in/election1/knowurconstituency.asp"><AREA 
  shape=RECT coords=48,5,305,29 
  href="http://www.ghmc.gov.in/election1/venusearch.asp"></MAP></BODY></HTML>
