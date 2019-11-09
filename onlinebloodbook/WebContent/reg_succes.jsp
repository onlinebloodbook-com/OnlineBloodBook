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
<s:iterator value="registers"> 
<fieldset style="color: maroon;" ><legend><font face="Courier New" size="+2" ><s:property value="regName"/>&nbsp;&nbsp;details</font></legend>
   <p style="color: green;" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;your registration has been successfully completed... </p>
<table cellpadding="10" cellspacing="10">

     <tr> 
   <td>Register Id  </td>
   <td  align="left" style="padding-left: 50px">:</td>
   <td><s:property value="regId"/></td>
   <td></td>
    
   <td>
                  <s:url id="editURL" action="updateLink1">
                  <s:param name="regId" value="%{regId}"></s:param>
                  </s:url>
                 <s:a href="%{editURL}"><span style="color:green">[Edit]</span></s:a> 
                 </td>
   </tr>

  <tr>
  <td>Full Name </td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="regName"/></td>
  
   <td align="left" style="padding-left: 100px"> Gender  </td>
   <td align="left" style="padding-left: 50px">:</td>
  <td align="left"><s:property value="regGender"/></td>
  </tr>
  
  <tr>
  <td><label> Blood Group</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="regBloodGroup"/></td>
  
  <td align="left" style="padding-left: 100px"> <label>Date of Birth </label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="regDOB"/></td>
  </tr>
  
  <tr>
  <td><label>Age</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="regAge"/></td>
  
  <td align="left" style="padding-left: 100px"><label> weight</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="regWeight"/></td>
  </tr>
  
  <tr>
  <td><label>Availability</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="regBloodAvailability"/></td>
  
  <td align="left" style="padding-left: 100px"><label> Mobile No</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="regMobileNo"/></td>
  </tr>
  
  <tr>
  <td><label> Land Line No</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="regLandNo"/></td>
  
  <td align="left" style="padding-left: 100px"><label> Email</label></td>
  <td align="left" style="padding-left: 50px">:</td>
  <td><s:property value="regEmail"/></td>
  </tr>
  
   <tr>
   <td><label> State</label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="regState"/></td>
   
   <td align="left" style="padding-left: 100px"><label>District</label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="regDistrict"/></td>
   </tr>
   
    <tr>
   <td><label> City </label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="regCity"/></td>
   
   <td align="left" style="padding-left: 100px"><label>  Address</label></td>
   <td align="left" style="padding-left: 50px">:</td>
   <td><s:property value="regAddress"/></td>
   </tr>

</table>

</fieldset>
 </s:iterator>  
 <br>
 </div>
 </div>
</body>
</html>