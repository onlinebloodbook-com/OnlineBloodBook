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
<display:table name="registers" uid="row" class="footable"  pagesize="15" requestURI="" >
<display:setProperty name="paging.banner.include_first_last" value="true" />
<display:setProperty name="paging.banner.placement" value="bottom"/>
<display:caption >All Blood Registration List</display:caption>
 
<display:column property="regName" title="Full Name" sortable="true" maxLength="10" />
<display:column property="regBloodGroup" title="Group" sortable="true" />
<display:column property="regGender" title="Gender" sortable="true" />
<display:column property="regAge" title="Age" sortable="true" />
<display:column property="regWeight"  title="Weight" sortable="true" />
<display:column property="regBloodAvailability" title="Availability" sortable="true" />
<display:column title="Location" sortable="true" maxLength="9"><s:property value="#attr.row.regState" />,<s:property value="#attr.row.regDistrict"/>,<s:property value="#attr.row.regCity"/></display:column>

<display:column title="Full Details"  href="getRegisterLink1"
            media="html" paramId="regId" paramProperty="regId"><span style=" color:white; border-radius: 2px; background: #BF0300; font-size: 16px; box-shadow: 0 0 0 2px #bf9543; background-image: -webkit-linear-gradient(top,#BF0300,#BF0300); padding:2px 16px;">View</span></display:column>
            
</display:table> 
</center>

<br>
<br>


</body>
</html>