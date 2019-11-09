<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="/struts-tags" prefix="s"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Blood Book</title>
<link rel="stylesheet" href="css/style.css" type="text/css">


</head>
<body>

	<div id="menu">
	<nav>
	
	<ul>
	<span class="navbefore"></span>
    <li class="menu-item"><a href="<s:url action="homeLink2"/>" >Home</a></li>
	<li class="menu-item"><a href="<s:url action="aboutLink"/>" >About</a></li>
	<li class="menu-item"><a href="<s:url action="registerLink1"/>" >Blood Register</a></li>
	<li class="menu-item"><a href="<s:url action="requestLink2"/>" >Blood Request</a></li>
	<li class="menu-item"><a href="<s:url action="searchLink"/>" >Blood Search</a></li>
	<li class="menu-item"><a href="<s:url action="helpLink5"/>" >Help!</a></li>
	<li class="menu-item"><a href="<s:url action="feedbackLink4"/>" >Feedback</a></li>
	<li class="menu-item noHover"><a href="#">.</a></li>
	<span class="navafter"><!--<form id="searchform"><input type="search" id="s" placeholder="Search"></form> --><marquee behavior="alternate"><h1 style="color: white;text-align:center;">onlinebloodbook.com</h1></marquee></span>
 	</ul>
	
	</nav>
   
	</div>


</body>
</html>