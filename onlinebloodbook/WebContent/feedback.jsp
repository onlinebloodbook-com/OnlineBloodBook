<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Blood Book</title>
<link rel="stylesheet" href="css/regstyle.css" type="text/css">
<link rel="stylesheet" href="css/styletitle.css" type="text/css">
<link  rel="stylesheet" href="css/about.css" type="text/css" />
<link rel="stylesheet" href="css/fieldset1.css" type="text/css">

<link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css"/>
<script src="js/jquery.validationEngine-en.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript"></script>
		
		<script>	
		$(document).ready(function() {
			// SUCCESS AJAX CALL, replace "success: false," by:     success : function() { callSuccessFunction() }, 
			
			$("#formID").validationEngine()
			
			
			//$.validationEngine.loadValidation("#date")
			//alert($("#formID").validationEngine({returnIsValid:true}))
			//$.validationEngine.buildPrompt("#date","This is an example","error")	 		 // Exterior prompt build example								 // input prompt close example
			//$.validationEngine.closePrompt(".formError",true) 							// CLOSE ALL OPEN PROMPTS
		});
		
		// JUST AN EXAMPLE OF VALIDATIN CUSTOM FUNCTIONS : funcCall[validate2fields]
		function validate2fields(){
			if($("#firstname").val() =="" || $("#lastname").val() == ""){
				return true;
			}else{
				return false;
			}
		}
	</script>	

<style>
#circle
{
    width: 60px;
	height: 60px;
	border-radius: 150px;
	-webkit-border-radius: 150px;
	-moz-border-radius: 150px;
	background: url(http://link-to-your/image.jpg) no-repeat;
	box-shadow: 0 0 8px rgba(0, 0, 0, .8);
	-webkit-box-shadow: 0 0 8px rgba(0, 0, 0, .8);
	-moz-box-shadow: 0 0 8px rgba(0, 0, 0, .8);
}
</style>


</head>
<body>
<!-- <center>

<div id="logo" class="ribbon">
      <h1><a href="#0">OnlineBloodBook</a></h1>
</div>
</center> -->
<div id="register">
  <div id="lazo">
    <div class="padding">
       Please provide following details.
       <div id="firsttriangle"></div>
       <div id="secondtriangle"></div>
       <div id="thirdtriangle"></div>
       <div id="fourdtriangle"></div>
       <div id="fifthtriangle"></div>
       <div id="sixtriangle"></div>
    </div>
  </div>
  
  
  <div id="forum">
  <fieldset style="color: maroon;" ><legend><font face="Courier New" size="+1">FeedBack</font></legend>
  <s:form action="addFeedbackLink4"  theme="css_xhtml" id="formID" cssClass="formular"> 
   <table cellpadding="10" cellspacing="10">
 <tr>
   <td>Your Name:</td>
   <td> <s:textfield name="fbName"  value="" cssClass="input validate[required]" id="fbName" placeholder=" Please Enter Name" /> </td>
   <td> Contact Number:</td>
   <td> <s:textfield name="fbContactNo" value="" cssClass="input" id="fbContactNo" placeholder="Enter Phone Number" /> </td>
  </tr>
   
  <tr>
   <td> Your Email:</td>
   <td><s:textfield name="fbEmail" value="" id="fbEmail" cssClass="input validate[required,custom[email]]" placeholder="Please Enter Email" /> </td>
   </tr>
    </table>
    <table cellpadding="10" cellspacing="10">
    <tr>
   <td> Feed Back:</td>
   <td> <s:textarea name="fbComment" value="" id="fbComment" cssClass="input validate[required,length[6,300]]" cssStyle="width: 500px; height: 100px" placeholder="Please Enter FeedBack..." /></td>
  <td></td>
  </tr>
    
    </table>
    
     <input type="submit" id="createAccount" value="Submit"  />
     <s:reset value="Reset" cssClass="reset" theme="simple"/>
     
     
     </s:form>
     </fieldset>
   </div>
</div>

<div class="app" >
<div>

<table style="background-color: #bf9543;" width="100%">
<tr>
<td style="padding-left: 10px; font-size: 25px; color:maroon ;"> Comments(<span style="color: green ;"><s:property value="fbId"/></span>)</td>
</tr>
</table>
<br>


  <s:iterator value="feedbacks"> 

 <table  cellpadding="1" cellspacing="1" style="background-color:#EEE8AA  ; padding-left: 10px" width="100%" bordercolor="#AEB05D">
  <tr>
<td width="10%"align="center" style="font-size: 18px;color:green ;"><s:property value="fbName"/><%-- (<s:property value="fbId"/>) --%></td>

<td width="100%" align="left" valign="bottom" style="padding-left: 10px;font-size: 16px;color:maroon ;" > at&nbsp;&nbsp;<s:date name="fbDate" />&nbsp;&nbsp;<s:date name="fbDate" nice="true" />
</td> 

</tr>
<tr>
<td> <img alt="" src="images/f1.png" id="circle"></td>
<td align="left" valign="top">

<table>
<tr >
<td align="left" style="padding-left: 7px; color: #585858; font-size: 16px;line-height: 1.6"><s:property value="fbComment"/></td>
</tr>
</table>
</td>
</tr>
</table>
<hr color="#d4c37b">
</s:iterator>
<a href="<s:url action="listFeedbackLink4"/>" >See More...</a>
<br>
<br>
</div>
</div>

</body>
</html> 