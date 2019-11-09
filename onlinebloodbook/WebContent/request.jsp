<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Blood Book</title>
<link rel="stylesheet" href="css/regstyle.css" type="text/css">
<link rel="stylesheet" href="css/tablestyle.css" type="text/css">
<link rel="stylesheet" href="css/fieldset1.css" type="text/css">

<script type="text/javascript" src="js/state_city.js"></script>


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



 <script type="text/javascript">
 function setRegions()
 {
 	for (reqState in district)
 		document.write('<option value="' + reqState + '">' + reqState + '</option>');
 }

 function set_country(oRegionSel, oCountrySel, oCity_StateSel)
 {
 	var countryArr;
 	oCountrySel.length = 0;
 	oCity_StateSel.length = 0;
 	var reqState = oRegionSel.options[oRegionSel.selectedIndex].text;
 	if (district[reqState])
 	{
 		oCountrySel.disabled = false;
 		oCity_StateSel.disabled = true;
 		oCountrySel.options[0] = new Option('Select District','');
 		countryArr = district[reqState].split('|');
 		for (var i = 0; i < countryArr.length; i++)
 			oCountrySel.options[i + 1] = new Option(countryArr[i], countryArr[i]);
 		/*document.getElementById('txtregion').innerHTML = reqState;
 		document.getElementById('txtplacename').innerHTML = '';*/
 	}
 	else oCountrySel.disabled = true;
 }

 function set_city_state(oCountrySel, oCity_StateSel)
 {
 	var city_stateArr;
 	oCity_StateSel.length = 0;
 	var reqDistrict = oCountrySel.options[oCountrySel.selectedIndex].text;
 	if (city[reqDistrict])
 	{
 		oCity_StateSel.disabled = false;
 		oCity_StateSel.options[0] = new Option('Select City','');
 		city_stateArr = city[reqDistrict].split('|');
 		for (var i = 0; i < city_stateArr.length; i++)
 			oCity_StateSel.options[i+1] = new Option(city_stateArr[i],city_stateArr[i]);
 		/*document.getElementById('txtplacename').innerHTML = reqDistrict;*/
 	}
 	else oCity_StateSel.disabled = true;
 }

 function print_city_state(oCountrySel, oCity_StateSel)
 {
 	var reqDistrict = oCountrySel.options[oCountrySel.selectedIndex].text;
 	var reqCity = oCity_StateSel.options[oCity_StateSel.selectedIndex].text;
 	if (reqCity && city[reqDistrict].indexOf(regCity) != -1)
 		document.getElementById('txtplacename').innerHTML = reqCity + ', ' + reqDistrict;
 	else document.getElementById('txtplacename').innerHTML = reqDistrict;
 }
   </script>
  
  
     <link type="text/css" href="http://ajax.microsoft.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css" rel="Stylesheet" />
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.min.js"></script>
  <script type="text/javascript">
        $(function () {
            $(".hajanDatePicker").datepicker();
        });
    </script>
</head>
<body>


<div id="register">
  <div id="lazo">
    <div class="padding">
       Please fill the following information to post your blood request!!
       <div id="firsttriangle"></div>
       <div id="secondtriangle"></div>
       <div id="thirdtriangle"></div>
       <div id="fourdtriangle"></div>
       <div id="fifthtriangle"></div>
       <div id="sixtriangle"></div>
    </div>
  </div>
  <div id="forum">
    
  <fieldset style="color: maroon;" ><legend><font face="Courier New" size="+1">Blood Request</font></legend> 
     <h3 align="center">Update your blood request</h3>
     <p align="justify">&nbsp;&nbsp;If you are already posted your blood request and want to update it then please enter blood request code beside and submit.<!-- We will inform our donors and we hope the needy people recover soon. --></p>
     <s:form action="#">
        <label> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter Your Blood Request Code:</strong> </label>
        <input type="text" value="" class="input" placeholder="Please Enter Request Code" >&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" id="createAccount1" value="Submit" /> 
      </s:form> 
     
      <hr width="100%" size="4" color="maroon">
     
      <s:form action="addRequestLink2" theme="css_xhtml" method="post" id="formID" cssClass="formular"> 
      <table cellpadding="9" cellspacing="3">
           <tr>
              <td width="150px"> <label for="fullname"> Full Name <span style="color: #C80815;">*</span>: </label></td>
              <td> <s:textfield name="reqName" value="" cssClass="input validate[required,custom[onlyLetter]]" placeholder="Please Enter Full Name" maxlength="20" /> </td>
              <td width="180px"><label for="gender"> Gender  <span style="color: #C80815;">*</span>: </label></td>
              <td> <s:select headerKey="" value="" headerValue="Select Gender" list="{'Male','Female'}" name="reqGender" id="reqGender" cssClass="inputt validate[required]" />  </td>
          </tr>
  
          <tr>
              <td> <label> Blood Group <span style="color: #C80815;">*</span>:</label></td>
              <td> <s:select name="reqBloodGroup" id="reqBloodGroup" value="" headerKey="" headerValue="Select Blood Group" list="{'A+','A-','B+','B-','AB+','AB-','O+','O-','other'}" cssClass="inputt validate[required]"/> </td>    
              <td> <label>No.of Units <span style="color: #C80815;">*</span>:</label></td>
              <td> <s:select headerKey="" value="" headerValue="Select no.of units" list="{'1','2','3','4','5','6','7','8','9','10'}" name="reqNofoUnits" id="reqNofoUnits" cssClass="inputt validate[required]"/> </td>
          </tr>
  
           <tr>
              <td><label> Age <span style="color: #C80815;">*</span>:</label></td>
              <td> <s:textfield name="reqAge" value="" cssClass="input validate[required,custom[onlyNumber],length[0,2]]"  placeholder="Enter Patient Age"/> </td>
              <td> <label> Requirement <span style="color: #C80815;">*</span>:</label></td>
              <td><s:select name="reqReason" id="reqReason" headerKey="" value="" headerValue="Select Reason" cssClass="inputt validate[required]" list="{'Dengue','Jaundice','Cancer Patient','Colon Cancer','Blood Cancer','Angioplasty','Bone Marrow Transplant','Coronary Artery','Open Heart Surgery','Mitral Valve Replacement',
                   'Burn Injuries','Accident','Sickle Cell','Thallesemia','Pregnancy','Aortic Valve Replacement','Blood Loss','Dialysis',
                   'Low Platelet Count','Knee Replacement','Knee Replacement','Hip Replacement','Bomb blast Victims','Others'}"/> </td>
           </tr>
  
           <tr>
              <td><label> Required Date :</label></td>
              <td><s:textfield name="reqRequiredDate" value="" id="datepicker" cssClass="input validate[required] hajanDatePicker" displayFormat="dd/mm/yy" placeholder="Select Required Date "/> </td>
              <td><label> Mobile No <span style="color: #C80815;">*</span>:</label></td>
              <td><s:textfield name="reqMobileNo" value="" cssClass="input validate[required,custom[telephone]]" placeholder="Enter Mobile Number" maxlength="10" /> </td>
           </tr>
  
           <tr>
              <td><label> Land Line No:</label></td>
              <td> <s:textfield name="reqLandNo" value="" cssClass="input" placeholder=" Enter Land Number" maxlength="10"  /> </td>
              <td><label> Email <span style="color: #C80815;">*</span>:</label></td>
              <td><s:textfield name="reqEmail" value="" cssClass="input validate[required,custom[email]]" placeholder="Please Enter Email"  /> </td>
          </tr>
  
           <tr>
              <td><label> State <span style="color: #C80815;">*</span>:</label></td>
              <td> <select onchange="set_country(this,reqDistrict,reqCity)" size="1" name="reqState" id="reqState" class="inputt validate[required]">
                    <option value="" selected="selected">Select State</option>
                    <script type="text/javascript">
                    setRegions(this);
                    </script>
                    </select>
              </td>
              <td> <label>District <span style="color: #C80815;">*</span>:</label></td>
              <td> <select name="reqDistrict" id="reqDistrict" size="1" disabled="disabled" onchange="set_city_state(this,reqCity)" class="inputt validate[required]"></select></td>
          </tr>
  
          <tr>
             <td> <label> City <span style="color: #C80815;">*</span>:</label></td>
             <td> <select name="reqCity" id="reqCity"  size="1" disabled="disabled" onchange="print_city_state(reqDistrict,this)" class="inputt validate[required]"></select></td>
             <td> <label> Patient Address:</label></td>
             <td> <s:textarea name="patientAddress" value="" cssClass="input validate[required]" placeholder="Enter Patient Address" maxlength="120"/> </td>
         </tr>
  
         <tr>
            <td> <label>Hospital Name:</label></td>
            <td> <s:textfield name="hospitalName" value="" cssClass="input validate[required]" placeholder="Enter Hospital Name" /> </td>
            <td> <label>Hospital Address :</label></td>
            <td> <s:textarea name="hospitalAddress" value="" cssClass="input" placeholder="Enter Hospital Address" maxlength="120"/> </td>
        </tr>
      </table>
      
      <input type="submit" id="createAccount" value="Submit" /> 
       <s:reset value="Reset" cssClass="reset" theme="simple"/>
     </s:form>
     </fieldset>
   
   </div>
</div>

</body>
</html> 