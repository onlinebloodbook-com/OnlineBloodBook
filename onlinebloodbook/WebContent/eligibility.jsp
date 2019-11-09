<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Blood Book</title>
<link rel="stylesheet" href="css/submenu.css" type="text/css">
<link  rel="stylesheet" href="css/about.css" type="text/css" />
</head>
<body>

<div id="navigation">
<div class="arrows">
	<span class="ar-left"></span>
	<span class="ar-right"></span>
	<span class="ar-left2"></span>
	<span class="ar-right2"></span>
</div> 

<div class="dark-color">
<div class="light-color">
<a href="#" id="logo">BloodBook*</a>
<div id="list">
	<ul>
	    <li><a  href="<s:url action="blood_historyLink"/>" >Blood History</a></li>
		<li><a  href="<s:url action="benefitsLink"/>" >Benefits</a></li>
		<li><a href="<s:url action="factsLink"/>">Blood Facts</a></li>
		<li><a href="<s:url action="eligibilityLink"/>">Eligibility</a></li>
		<li><a href="<s:url action="compatibilityLink"/>">Compatibility</a></li>
		<li><a href="<s:url action="tipsLink"/>">Tips</a></li>
        <li><a href="<s:url action="faqLink"/>">F.A.Q</a></li>
	</ul>
</div>
</div>
</div>
</div>


<div class="app">
<div>
 <img src="images/e.jpg" class="float--left" width="230" height="200" />
       <h2>Eligibilities:</h2>
            <p> <img  src="images/i.png" width="15" height="15">&nbsp;Any donor, who is healthy, fit and not suffering from any transmittable diseases can &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;donate blood.</p>
			<p> <img  src="images/i.png" width="15" height="15">&nbsp;Donor must be 18 -60 years age and having a minimum weight of 50Kg can donate &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;blood.</p>
			<p> <img  src="images/i.png" width="15" height="15">&nbsp;Donor&rsquo;s Hemoglobin level is 12.5% minimum.</p>
			<p> <img  src="images/i.png" width="15" height="15">&nbsp;A donor can again donate blood after 3 months of your last donation of blood.</p>
			<p> <img  src="images/i.png" width="15" height="15">&nbsp;Pulse rate must be between 50 to 100mm without any irregularities.</p>
			<p> <img  src="images/i.png" width="15" height="15">&nbsp;BP Diastolic 50 to 100 mm Hg and Systolic 100 to 180 mm Hg.</p>
			<p> <img  src="images/i.png" width="15" height="15">&nbsp;Body temperature should be normal and oral temperature should not exceed 37.5 degree Celsius.</p>
       
       
</div>
<div>
     
       <h2>Non-Eligibilities:</h2>
<p>You should not be suffering from any of the following diseases or taking medicines for them <br>
                  
         <p> <img  src="images/i.png" width="15" height="15"> &nbsp; Hepatitis B, C </p>
         <p> <img  src="images/i.png" width="15" height="15"> &nbsp;AIDS </p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Diabetes (are you under medication currently?)</p> 
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Fits/ Convulsions (are you under medication currently?) </p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Cancer</p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Leprosy or any other infectious diseases </p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Any allergies (Only if you are suffering from severe symptoms) </p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Hemophilia/ Bleeding problems </p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Kidney disease </p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Heart disease </p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Hormonal disorders</p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Any other type of Jaundice (within 5 years)</p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Tuberculosis (within 2 years)</p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Chicken Pox (within 1 year) </p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Malaria (within 1 year) </p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Organ Transplant (within one year) </p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Blood Transfusion (within the last 6 months) </p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Pregnancy (within the last 6 months)</p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Blood Donation (within the last 3 months) </p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Major Surgery (within the last 3 months)</p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Small Pox Vaccination (within the last 3weeks) </p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Hemoglobin deficiency / Anemia (recently)</p>
         <p> <img  src="images/i.png" width="15" height="15">&nbsp; Drastic weight loss (recently)</p>
          
          </div>
</div>
</body>
</html>