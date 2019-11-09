<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Blood Book</title>
<link rel="stylesheet" href="css/fieldset2.css" type="text/css">
<link rel="stylesheet" href="css/about.css"  type="text/css" />

</head>
<body style="background-color: #d4c37b;">
 <div class="app">
<div>
<s:iterator value="requests">
<fieldset style="color: maroon;" ><legend><font face="Courier New" size="+2" ><s:property value="reqName"/>&nbsp;&nbsp;details</font></legend>
   <p style="color: green;" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;your update has been successfully completed... </p>
<table cellpadding="10" cellspacing="10">

     <tr> 
   <td>Request Id  </td>
   <td  align="left" style="padding-left: 50px">:</td>
   <td><s:property value="reqId"/></td>
   
    
   <td align="left" style="padding-left: 100px">
                  <s:url id="editURL" action="updateLink2">
                  <s:param name="reqId" value="%{reqId}"></s:param>
                  </s:url>
                  <s:a href="%{editURL}"><span style="color:green">[Edit]</span></s:a>
                 </td>
   </tr>

  <tr>
  <td>Full Name </td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="reqName"/></td>
  
   <td align="left" style="padding-left: 100px"> Gender  </td>
   <td align="left" style="padding-left: 50px">:</td>
  <td align="left"><s:property value="reqGender"/></td>
  </tr>
  
  <tr>
  <td><label> Blood Group</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="reqBloodGroup"/></td>
  
  <td align="left" style="padding-left: 100px"> <label>No.of Units</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="reqNofoUnits"/></td>
  </tr>
  
  <tr>
  <td><label>Age</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="reqAge"/></td>
  
  <td align="left" style="padding-left: 100px"><label> Requirement</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="reqReason"/></td>
  </tr>
  
  <tr>
  <td><label>Required Date</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="reqRequiredDate"/></td>
  
  <td align="left" style="padding-left: 100px"><label> Mobile No</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="reqMobileNo"/></td>
  </tr>
  
  <tr>
  <td><label> Land Line No</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="reqLandNo"/></td>
  
  <td align="left" style="padding-left: 100px"><label> Email</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="reqEmail"/></td>
  </tr>
  
   <tr>
   <td><label> State</label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="reqState"/></td>
   
   <td align="left" style="padding-left: 100px"><label>District</label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="reqDistrict"/></td>
   </tr>
   
    <tr>
   <td><label> City </label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="reqCity"/></td>
   
   <td align="left" style="padding-left: 100px"><label> Patient Address</label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="patientAddress"/></td>
   </tr>
   
   <tr>
   <td><label> Hospital Name </label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="hospitalName"/></td>
   
   <td align="left" style="padding-left: 100px"><label>Hospital Address</label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="hospitalAddress"/></td>
   </tr>
    
</table> 
</fieldset>

</s:iterator>
</div>
</div>
<br>

</body>
</html>