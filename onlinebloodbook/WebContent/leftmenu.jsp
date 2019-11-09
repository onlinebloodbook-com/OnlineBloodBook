<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="/struts-tags" prefix="s"%>
<title>Online Blood Book</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link  rel="stylesheet"href="css/leftmenu.css"  type="text/css" media="all"/>

</head>
<body>

 <div class="wrap"> 
	<!-- <div class="header_bottom"> --> 
	
		<div class="header_bottom_left">
		
			<div class="logo">
			<a href="#"><img src="images/111.png" alt="" /></a>
			</div>
					<div class="menu">
						<ul>
				     		<li><a href="<s:url action="listRegisterLink1"/>">All Registration List</a></li>
				     		<li><a href="<s:url action="listRequestLink2"/>">All Request List</a></li>
				     		<li><a href="<s:url action="why_donateLink"/>">Why Donate Blood?  </a></li>
				     		<li><a href="<s:url action="who_needsLink"/>">Who Needs Blood?</a></li>
				     		<li><a href="<s:url action="contactLink"/>">Contact Us</a></li>
				     		
				     		<!-- <div class="clear"></div> -->
				     	</ul>
				     	
					</div>
					
  			   </div>
  			   
  			   </div>
  			 
  			   </body>
</html>