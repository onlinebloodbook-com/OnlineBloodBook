<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="/struts-tags" prefix="s"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Blood Book</title>
<link rel="stylesheet" href="css/submenu.css" type="text/css">
<link rel="stylesheet" href="css/about.css"  type="text/css" />
<link rel="stylesheet" href="css/default.css" type="text/css"  /> 
<link rel="stylesheet" href="css/component.css" type="text/css"  />
  
  <!-- database.url=jdbc:mysql://localhost:3306/onlinebloodbook -->
  <!-- database.url=jdbc:mysql://mysql7504-onlinebloodbook.ind-cloud.everdata.com/onlinebloodbook -->
   <!-- password==MQRvcq93157 -->
  <!--  database.driver=com.mysql.jdbc.Driver
database.url=jdbc:mysql://mysql7504-onlinebloodbook.ind-cloud.everdata.com/onlinebloodbook
database.user=root
database.password=MQRvcq93157
hibernate.dialect=org.hibernate.dialect.MySQLDialect
hibernate.show_sql=true
hibernate.hbm2ddl.auto=update -->
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
      <img src="images/ab.jpg" class="float--left" width="400" />
       <h2>About Blood</h2>
   
   <p>The ABO blood group system was discovered by Karl Landsteiner in 1900.  46 years later (1946) the Blood Transfusion 
			Service was formed.  In 1996 the National Blood Service was formed to collect and provide blood supplies for all the 
			hospitals in England and North Wales.  We then merged with UK Transplant to create NHS Blood and Transplant.</p>
  <p>8,000 units of blood are needed every day to meet hospital demand.  Blood comes in four main types - O, A, B 
			and AB.  Group O is the most common which means it is in high demand.  Blood can also be subdivided into its main 
			components - <a href="#">red cells</a>, white cells, platelets and plasma. Unfortunately red 
			cells only have a shelf-life of 35 days, while platelets shelf life is even less, only five days.</p>
   <p>Almost anyone between the ages of 17 and 65 can become a new blood donor. And those who are regular donors can 
			continue to donate as long as they are in good health.</p>

			<p>Last year we collected 2.1 million donations from about 1.6 million donors. Although that sounds a lot, it 
			reflects only 4% of the population, giving two or three times a year.</p>

			<p>The average adult has around 5 trillion red blood cells in one litre of blood.  Which means you have on 
			average 25 trillion red cells running around inside you, although 25 million (or 0.1%) of them die every day. That 
			works out at roughly 300 a second.</p>

			<p>William Harvey was the first physician to discover that blood circulates round the body back in 1628. Sir 
			Christopher Wren (St Paul's Cathedral Christopher Wren) actually injected fluids into the circulation of 
			animals, using an instrument invented by the aforementioned Mr Harvey.</p>

			<p>The first successful blood transfusion was carried out in 1665 by Dr Richard Lower. He used dogs as the 
			donor and recipient. However, when they started performing transfusions on humans, they couldn't understand 
			why the people receiving the blood kept dying. It wasn't until 1900 that Dr Karl Landsteiner discovered the 
			ABO blood group system and realised that human patients needed to be given compatible blood. He got the Nobel 
			Prize for his discovery.</p>

			<p>46 years later (1946) the Blood Transfusion Service was formed. In 1996 the National Blood Service was 
			formed to collect and provide blood supplies for all the hospitals in England and North Wales. We then 
			merged with UK Transplant to create NHS Blood and Transplant.   <button class="md-trigger" data-modal="modal-4" >Read more</button></p>

  </div>

   <div class="md-modal md-effect-4" id="modal-4">
			<div class="md-content">
   <h3>About Blood</h3>
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
  
  
</div>
</body>
</html>