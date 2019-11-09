<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Blood Book</title>
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

</head>
<body>


<div id="register">
  <div id="lazo">
    <div class="padding">
      Please fill the following information to search blood !!
       <div id="firsttriangle"></div>
       <div id="secondtriangle"></div>
       <div id="thirdtriangle"></div>
       <div id="fourdtriangle"></div>
       <div id="fifthtriangle"></div>
       <div id="sixtriangle"></div>
    </div>
  </div>
  <div id="forum">
  <s:form action="searchListLink1" theme="css_xhtml" id="formID" cssClass="formular">   
  <fieldset style="color: maroon;" ><legend><font face="Courier New" size="+1">Blood Search</font></legend>
   
   <table cellpadding="10" cellspacing="10" align="center" width="">
    <tr>
   <td>
  <input type="hidden" name="regBloodAvailability" id="regBloodAvailability"  value="available">
   </td>
   </tr> 
    
 <tr>
   <td>Blood Group:</td>
   <td > 
    <select name="regBloodGroup" id="regBloodGroup"  class="inputt validate[required]">
            <option value="" >Select Blood Group</option>
            <option value="A+" >A+</option>
            <option value="A-">A-</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
            <option value="O+">O+</option>
            <option value="O-">O-</option>
            <option value="other">other</option>
            </select> 
    </td> 
   </tr>
   <tr>
   <td> Select State:</td>
  <td> <select onchange="set_country(this,regDistrict,regCity)" size="1" name="regState" id="regState" class="inputt validate[required]">
    <option value="" selected="selected">Select State</option>
    
    <script type="text/javascript">
       setRegions(this);
   </script>
    
    </select></td>
  </tr>
    <tr>
   <td> Select District:</td>
    <td> <select name="regDistrict" id="regDistrict" size="1" onchange="set_city_state(this,regCity)" class="inputt validate[required]"></select></td>
   </tr>
   <tr>
   <td> Select City:</td>
  <td> <select name="regCity" id="regCity" size="1" disabled="disabled" onchange="print_city_state(regDistrict,this)" class="inputt validate[required]"></select></td>
  </tr>
    </table>
    <s:submit cssClass="search" value="Search" align=" center" />
   
   
     </fieldset>
    </s:form>
   </div>
</div>


</body>
</html> 