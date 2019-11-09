<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Blood Book</title>
<link rel="stylesheet" href="css/submenu.css" type="text/css">
<link rel="stylesheet" href="css/about.css"  type="text/css" />
<link rel="stylesheet" href="css/default.css" type="text/css"  /> 
<link rel="stylesheet" href="css/component.css" type="text/css"  />
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
    <img src="images/bh.jpg" class="float--left" width="400" height="250"/>
    <h2>Blood History</h2>
    <p>The first recorded successful human blood transfusion was accomplished in 1818, but due to the lack of knowledge and research, it was followed by many blood transfusion failures. Some 80 years later, it was discovered that inherited differences in people&#8217;s red cells were the cause of many of the incompatibilites seen with transfusions. Four blood types were identified - A, B, AB and O. This discovery revolutionized hematology and led the way for successful blood transfusions.</p>
    <p>During World War I, when human blood was needed for transfusions for wounded soldiers, scientists began to study how to preserve and transport blood. But it was not until World War II that the development of effective preservative solutions made blood transfusions widely and safely available. Since then, there have been many advances, such as the discovery of the Rh blood group system and technical developments such as the introduction of the plastic bag for safer blood collection.</p>  </div>
    <p>By the end of 1947, several blood banks had been established in major cities across the United States and blood donation was promoted to the public as a way of fulfilling one&#8217;s civic responsibility.</p>
    <p>Freezing of red blood cells, separation of different blood components by centrifugation, apheresis (extraction of one blood component and returning the rest to the donor) and many other discoveries and advancements make for full utilization of every donation. Each blood element can be used to treat different diseases.</p>
    <p>Today, in light of HIV, Hepatitis C and many other diseases, the federal government has enforced regulations for blood screening tests in an effort to improve blood safety and to reduce the risk from blood transfusions. To further ensure the safety of the blood supply, the government outlawed paying someone for his or her blood.</p>
    <p>Human blood is precious. There is no substitute for it and there is no way to manufacture it outside the body. Yet, millions of times each year, human blood is required to save the lives of people suffering from disease or who are victims of accidents.  <button class="md-trigger" data-modal="modal-4" >Read more</button></p>
   
   <h2>Blood Types</h2>
   <h4>ABO Types:&nbsp;<span class="black">The ABO blood groups are defined by the presence or absence of two inherited molecules, or antigens, A and B, that are present on the surface of red blood cells. You inherit either A or B antigens (group A or B), both A and B antigens (group AB), or neither antigen (group O).</span></h4>
  
   
  <h4>The Rh system:&nbsp;<span class="black">Discovered 40 years after the identification of ABO blood groups, the Rh factor is the second most significant blood-group system in human-blood transfusion. The presence or absence of the D antigen on a red cell determines whether you are Rh+ or Rh-.</span></h4>

 <h4> ABO and Rh distribution in the USA:</h4>
   <table border="0" class="barchart" style="width: 100%; color: #7b1415"">
  <tbody>
  <tr>
  <td style="width: 25px; padding-right: 10px; color: #7b1415"">O+</td>
  <td>
  <div class="bargraph" style="width: 494px;">37.4%</div>
  </td>
 </tr>

 <tr>
 <td style="padding-right: 10px; color: #7b1415"">A+</td>
 <td>
 <div class="bargraph" style="width: 447px;">35.7%</div>
 </td>
 </tr>

 <tr>
 <td style="padding-right: 10px;color: #7b1415"">B+</td>
 <td>
 <div class="bargraph" style="width: 125px;">8.5%</div>
 </td>
 </tr>

 <tr>
 <td style="padding-right: 10px; color: #7b1415" >AB+</td>
 <td>
 <div class="bargraph" style="width: 65px;">3.4%</div>
 </td>
 </tr>

<tr>
<td style="padding-right: 10px;" color: #7b1415">O-</td>
<td>
<div class="bargraph" style="width: 116px;">6.6%</div>
</td>
</tr>

<tr>
<td style="padding-right: 10px; color: #7b1415"">A-</td>
<td>
<div class="bargraph" style="width: 113px;">6.3%</div>
</td>
</tr>

<tr>
<td style="padding-right: 10px; color: #7b1415"">B-</td>
<td>
<div class="bargraph" style="width: 40px;">1.5%</div>
</td>
</tr>

<tr>
<td style="padding-right: 10px; color: #7b1415"">AB-</td>
<td>
<div class="bargraph" style="width: 26px;">0.6%</div>
</td>
</tr>
</tbody>
</table>
   <br><br>
   
   <div class="md-modal md-effect-4" id="modal-4">
			<div class="md-content">
				<h3>Blood History</h3>
				<div>
				<h2>Bloodletting</h2>			
				<p>Bloodletting was based on an ancient system of medicine in which
               blood and other bodily fluid were considered to be "humors," the
                    proper balance of which maintained health.</p>
                    <h4>c. 2500 BCE: <span class="black">Egyptians Use Bleeding</span></h4>

<p>A tomb illustration in Memphis, Egypt, depicts a patient being
bled from the foot and neck.&nbsp;Though the bloodletting was often
recommended by physicians it was carried out by barbers, eventually
symbolized by the red-and-white-striped barber pole.</p>

<h4>1897:&nbsp;<span class="black">Dracula by Irish Author Bram
Stoker is Published</span></h4>

<p>Remembered as the quintessential vampire novel, it provided the
basis of modern vampire fiction… the taking of blood from the
living to sustain the "life" of the undead.</p>

<%-- <h4>Late 1800s: <span class="black">Bloodletting Medically
Questioned</span></h4>

<p>The benefits of bloodletting began to be seriously questioned in
the second half of the 1800s. Some still considered it beneficial
in some circumstances, for instance to "clear out" infected or
weakened blood or to stop hemorrhaging. Some forms of bloodletting
persisted into the 20th century.</p>
 --%>
                    
					<button class="md-close">Close</button>
				</div>
			</div>
		</div>
    
       <div class="md-overlay"></div><!-- the overlay element -->
		<!-- classie.js by @desandro: https://github.com/desandro/classie -->
		<script src="js2/classie.js"></script>
		<script src="js2/modalEffects.js"></script>

		<!-- for the blur effect -->
		<!-- by @derSchepp https://github.com/Schepp/CSS-Filters-Polyfill -->
		<script>
			// this is important for IEs
			var polyfilter_scriptpath = '/js/';
		</script>
  
   <%--  <div>
    <img src="http://placehold.it/202x202" class="float--right" />
      <h3>Jane Smith<br><small>Vice President</small></h3>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
  </div> --%>
  
</div>


</body>
</html>