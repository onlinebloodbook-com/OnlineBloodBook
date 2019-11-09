<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>online blood book</title>
<link rel="stylesheet" href="css/regstyle.css" type="text/css">
<link rel="stylesheet" href="css/tablestyle.css" type="text/css">
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


<script type="text/javascript" src="js/state_city.js"></script>
<script type="text/javascript">
function setRegions()
{
	for (regState in district)
		document.write('<option value="' + regState + '">' + regState + '</option>');
}

function set_country(oRegionSel, oCountrySel, oCity_StateSel)
{
	var countryArr;
	oCountrySel.length = 0;
	oCity_StateSel.length = 0;
	var regState = oRegionSel.options[oRegionSel.selectedIndex].text;
	if (district[regState])
	{
		oCountrySel.disabled = false;
		oCity_StateSel.disabled = true;
		oCountrySel.options[0] = new Option('Select District','');
		countryArr = district[regState].split('|');
		for (var i = 0; i < countryArr.length; i++)
			oCountrySel.options[i + 1] = new Option(countryArr[i], countryArr[i]);
		/*document.getElementById('txtregion').innerHTML = regState;
		document.getElementById('txtplacename').innerHTML = '';*/
	}
	else oCountrySel.disabled = true;
}

function set_city_state(oCountrySel, oCity_StateSel)
{
	var city_stateArr;
	oCity_StateSel.length = 0;
	var regDistrict = oCountrySel.options[oCountrySel.selectedIndex].text;
	if (city[regDistrict])
	{
		oCity_StateSel.disabled = false;
		oCity_StateSel.options[0] = new Option('Select City','');
		city_stateArr = city[regDistrict].split('|');
		for (var i = 0; i < city_stateArr.length; i++)
			oCity_StateSel.options[i+1] = new Option(city_stateArr[i],city_stateArr[i]);
		/*document.getElementById('txtplacename').innerHTML = regDistrict;*/
	}
	else oCity_StateSel.disabled = true;
}

function print_city_state(oCountrySel, oCity_StateSel)
{
	var regDistrict = oCountrySel.options[oCountrySel.selectedIndex].text;
	var regCity = oCity_StateSel.options[oCity_StateSel.selectedIndex].text;
	if (regCity && city[regDistrict].indexOf(regCity) != -1)
		document.getElementById('txtplacename').innerHTML = regCity + ', ' + regDistrict;
	else document.getElementById('txtplacename').innerHTML = regDistrict;
}
   </script>
   
 
 
 
   <link type="text/css" href="http://ajax.microsoft.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css" rel="Stylesheet" />
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.min.js"></script>
  <script type="text/javascript">
        $(function () {
            $(".hajanDatePicker").datepicker({
            	 changeMonth: true,
                 changeYear: true,
                 yearRange:"-50:2015",
      
                	 
            });
        });
    </script>

</head>
<body >
<div id="register">
  <div id="lazo">
    <div class="padding">
       Please fill the following information to register !!
       <div id="firsttriangle"></div>
       <div id="secondtriangle"></div>
       <div id="thirdtriangle"></div>
       <div id="fourdtriangle"></div>
       <div id="fifthtriangle"></div>
       <div id="sixtriangle"></div>
    </div>
  </div>
  
   <div id="forum">
   
  <s:form action="addRegisterLink1" method="post" enctype="multipart/form-data" theme="css_xhtml" id="formID" cssClass="formular" >  
  <fieldset style="color: maroon;" ><legend><font face="Courier New" size="+1" >Blood Registration</font></legend> 
  
   <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please fill the following information to register as voluntary blood donor and become part of<strong> <a href="http://www.onlinebloodbook.com" style="color: maroon;" target="_blank">onlinebloodbook.com!</a></strong> vision.</p> <!-- Kindly update your date of donatoin once done, so that your name will be hidden automatically till next 3 Months. Also please update your profile/information if in case you relocate in future. </p> -->
   
    <hr width="100%" size="4" color="maroon">
    
 <table cellpadding="8" cellspacing="3">
 <tr>
   <td width="180px"> <label> Full Name <span style="color: #C80815;">*</span>: </label></td>
   <td> <s:textfield name="regName" value="" cssClass="input validate[required,custom[onlyLetter]]" placeholder="Enter Full Name" maxlength="20" /> </td>
   <td width="160px"><label> Gender  <span style="color: #C80815;">*</span>: </label></td>
   <td> <s:select headerKey="" value=""  headerValue="Select Gender" list="{'Male','Female'}" name="regGender" id="regGender" cssClass="inputt validate[required]"></s:select></td> 
  </tr>
  
    <tr>
   <td> <label> Blood Group <span style="color: #C80815;">*</span>:</label></td>
   <td> <s:select name="regBloodGroup" id="regBloodGroup" value="" headerKey="" headerValue="Select Blood Group" list="{'A+','A-','B+','B-','AB+','AB-','O+','O-','other'}" cssClass="inputt validate[required]" /> </td>    
   <td> <label>Date of Birth <span style="color: #C80815;">*</span>:</label></td>
   <td> <s:textfield name="regDOB" value="" cssClass="input validate[required] hajanDatePicker"  placeholder="Select Date of Birth" /> </td>
  </tr>
  
  <tr>
   <td> <label>Age <span style="color: #C80815;">*</span>:</label></td>
   <td> <s:textfield name="regAge" value="" cssClass="input validate[required,custom[integer],min[18],max[25]]" placeholder="Enter Your Age" maxlength="2"/></td>
   <td> <label> weight <span style="color: #C80815;">*</span>:</label></td>
   <td> <s:textfield name="regWeight" value="" cssClass="input validate[required,custom[onlyNumber],length[0,2]]" placeholder="Enter Your Weight" maxlength="2"/></td>
  </tr>
  
  <tr>
   <td> <label>Availability <span style="color: #C80815;">*</span>:</label></td>
   <td> <s:select headerKey="" value="" headerValue="Select Availability" list="{'available','unavailable'}" name="regBloodAvailability" id="regBloodAvailability" cssClass="inputt validate[required]" /> </td>
   <td> <label> Mobile No <span style="color: #C80815;">*</span>:</label></td>
   <td> <s:textfield name="regMobileNo" value="" cssClass="input validate[required,custom[telephone]]" maxlength="10"   placeholder="Enter Mobile Number"/> </td>
  </tr>
  
  <tr>
   <td> <label> Land Line No:</label></td>
   <td> <s:textfield name="regLandNo" value="" cssClass="input" maxlength="10"  placeholder="Enter Land Number" /> </td>   
   <td> <label> Email <span style="color: #C80815;">*</span>:</label></td>
   <td> <s:textfield name="regEmail" value="" placeholder="Enter Email Address" cssClass="input validate[required,custom[email]]" /> </td>
  </tr>
  
  <tr>
   <td> <label> State <span style="color: #C80815;">*</span>:</label></td>
   <td> <select onchange="set_country(this,regDistrict,regCity)" size="1" name="regState" id="regState" class="inputt validate[required]">
        <option value="" selected="selected">Select State</option>
              <script type="text/javascript">
               setRegions(this);
              </script>
            </select></td>
  
   <td> <label>District <span style="color: #C80815;">*</span>:</label></td>
   <td> <select name="regDistrict" id="regDistrict" size="1" onchange="set_city_state(this,regCity)" class="inputt validate[required]"></select></td>
  </tr>
   
  <tr>
   <td> <label> City <span style="color: #C80815;">*</span>:</label></td>
   <td> <select name="regCity" id="regCity" size="1" disabled="disabled" onchange="print_city_state(regDistrict,this)" class="inputt"></select></td>
   <td> <label>  Address:</label></td>
   <td> <s:textarea name="regAddress" value="" cssClass="input" placeholder="Enter Your Address" maxLength="120" /> </td>
  </tr>
  
  <tr>
    <td> <label>User Name <span style="color: #C80815;">*</span>:</label></td>
   <td> <s:textfield name="userId" value="" cssClass="input validate[required]" placeholder="Enter User Name" maxlength="10"/> </td>
   <td> <label>Password <span style="color: #C80815;">*</span>:</label></td>
   <td> <s:password name="userPassword" value="" id="password" cssClass="input validate[required,length[6,8]]" placeholder="Enter Password" /> </td>
  </tr>

 </table>
 <table cellpadding="5" cellspacing="3">
 <tr>
 <td><label>Confirm Password <span style="color: #C80815;">*</span>:</label></td>
 <td><s:password name="confirmPassword" value="" cssClass="input validate[required,confirm[password]]" placeholder="Enter Confirm Password" /></td>
 <td><s:checkbox name="chek" value=""  cssClass="validate[required]"/>
 <td><label><span style="color: green"> <a href="<s:url action="privacypolicyLink"/>">I authorise the website to display my detailes.</a></span></label></td>

 
 </tr>
 </table>
      <input type="submit" id="createAccount" value="Submit" /> 
      <s:reset value="Reset" cssClass="reset" theme="simple"/> 
    
  
 </fieldset>
 </s:form>   
   
   </div>
</div>
  
 
</body>
</html> 