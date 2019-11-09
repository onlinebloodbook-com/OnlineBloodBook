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
<fieldset style="color: maroon;" ><legend><font face="Courier New" size="+2" ><s:property value="%{bean.regName}"/>&nbsp;&nbsp;details</font></legend>
<center>
<table>
     <tr> 
    <td><span style="color: green">Please don't misuse contact details</span> </td>
   </tr>
</table>
</center>
<table cellpadding="10" cellspacing="10">
  <tr>
  <td>Full Name </td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="%{bean.regName}"/></td>
  
   <td align="left" style="padding-left: 100px"> Gender  </td>
   <td align="left" style="padding-left: 50px">:</td>
  <td align="left"><s:property value="%{bean.regGender}"/></td>
  </tr>
  
  <tr>
  <td><label> Blood Group</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="%{bean.regBloodGroup}"/></td>
  
  <td align="left" style="padding-left: 100px"> <label>Date of Birth </label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="%{bean.regDOB}"/></td>
  </tr>
  
  <tr>
  <td><label>Age</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="%{bean.regAge}"/></td>
  
  <td align="left" style="padding-left: 100px"><label> weight</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="%{bean.regWeight}"/></td>
  </tr>
  
  <tr>
  <td><label>Availability</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="%{bean.regBloodAvailability}"/></td>
  
  <td align="left" style="padding-left: 100px"><label> Mobile No</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="%{bean.regMobileNo}"/></td>
  </tr>
  
  <tr>
  <td><label> Land Line No</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="%{bean.regLandNo}"/></td>
  
  <td align="left" style="padding-left: 100px"><label> Email</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="%{bean.regEmail}"/></td>
  </tr>
  
   <tr>
   <td><label> State</label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="%{bean.regState}"/></td>
   
   <td align="left" style="padding-left: 100px"><label>District</label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="%{bean.regDistrict}"/></td>
   </tr>
   
    <tr>
   <td><label> City </label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="%{bean.regCity}"/></td>
   
   <td align="left" style="padding-left: 100px"><label>  Address</label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="%{bean.regAddress}"/></td>
   </tr>
   
  
</table>

</fieldset>
<br>
 </div>
 </div>
</body>
</html>