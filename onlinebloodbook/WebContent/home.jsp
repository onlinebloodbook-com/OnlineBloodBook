<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="s" uri="/struts-tags"%>
   <%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>" :: Online Blood Book : Online blood donation, India Largest Voluntary blood donors list :: "</title>
<meta http-equiv="Description" name="Description" content="Online Blood Book is an online blood donation application, which allow donor  Onlie blood registration; " >

<meta http-equiv="Keywords" name="Keywords" content="blood, blood bank, online blood, free blood, blood book, free online blood book, blood registration,online blood donation, 
blood donor, blood donor India, online blood donation India, blood donation india, free blood donor, online blood free register, blood banks, blood donor database, 
get blood donors, blood donors, blood donation, blood banks, blood donor database, seek blood donors, blood donors request, voluntary blood donors, search blood donors, blood donors list,
 blood donors on demand, donate blood, register blood donors, register blood donor, get blood donor, seek blood donor,voluntary blood donor in India, volountary blood register in India, search blood donor,
 voluntary blood donors in India, blood donation in India, blood donation in Andhra Pradesh, India blood donors, indianblooddonors, indian blood donors, online blood book, online blood bank, blood donors in hyderabad, blood donors in vizag, 
 blood donors in kakinada, Online Blood Bank, India's Largest Blood Donors Database, Andhrapradesh donors list, hyderabad  pune blood donors list, chennia blood donors list,
  Mumbai blood donors list, Delhi blood donors list, Bangalore blood donors list, Nodia blood donors list, Find a Blood Group, blood donation facts, blood donation restrictions, 
  blood donation camp, blood donate, blood donation requirements, blood donation centers, blood donation posters, blood donation information, give blood, giving blood, ">



<link rel="stylesheet" href="css/tablestyle.css" type="text/css">
<link rel="stylesheet" href="css/default.css" type="text/css"  /> 
<link rel="stylesheet" href="css/component.css" type="text/css"  />
  
   <%-- <script type="text/javascript">
   alert("Site Under Devloping");
</script>
   --%>
  
 <%
   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
   %>
 

</head>
<body style="background-color: #d4c37b;">

 
<center>
<display:table   name="requests" uid="row" class="footable" style="align=center;" pagesize="15" requestURI="">
<display:setProperty name="paging.banner.placement" value="bottom"/>
<display:caption >Recently Blood Request List</display:caption>
    
<display:column property="reqName" title="Full Name" sortable="true" maxLength="10"/>
<display:column property="reqBloodGroup" title="Blood Group" sortable="true" />
<display:column property="reqGender" title="Gender" sortable="true"/>
<display:column property="reqNofoUnits" title="No. of Units" sortable="true"/>
<display:column property="reqReason" title="Purpose" sortable="true"/>
<display:column property="reqRequiredDate" title="Reuired" sortable="true" />
<display:column title="Location" maxLength="10" sortable="true"><s:property value="#attr.row.reqState"/>,<s:property value="#attr.row.reqDistrict"/>,<s:property value="#attr.row.reqCity"/> </display:column>

<display:column title="Full Details"  href="getRequestLink2"
            media="html" paramId="reqId" paramProperty="reqId"><span style=" color:white; border-radius: 2px; background: #BF0300; font-size: 16px; box-shadow: 0 0 0 2px #bf9543; background-image: -webkit-linear-gradient(top,#BF0300,#BF0300); padding:2px 16px;">View</span></display:column>
 
</display:table>

</center>
 <br><br> <br><br>
 </body>
</html>