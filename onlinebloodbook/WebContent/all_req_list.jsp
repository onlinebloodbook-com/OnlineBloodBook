<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
    <%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Blood Book</title>
<link rel="stylesheet" href="css/tablestyle.css" type="text/css">
<link rel="stylesheet" href="css/default.css" type="text/css"  /> 
<link rel="stylesheet" href="css/component.css" type="text/css"  />
  
</head>
<body style="background-color: #d4c37b;">
<center>
<display:table   name="requests" uid="row" class="footable" style="align=center;" pagesize="15" requestURI="">
<display:setProperty name="paging.banner.placement" value="bottom"/>
<display:caption >All Blood Request List</display:caption>

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
<br>
<br>

</body>
</html>