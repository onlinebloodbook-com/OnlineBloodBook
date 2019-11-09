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
      <img src="images/bg.jpg" class="float--left" width="370" height="230"/>
       <h2>Health Benefits of Donating Blood</h2>
<p>A spider bite might not transform you into a superhero, but a small needle prick and a little of your time sure can. Yes, by donating blood you&rsquo;ll be saving up to three human lives each time. And here is even more awesome news: not only is donating blood extremely beneficial to those on the receiving end, it also has proven benefits to the person donating blood.Here are some of the benefits you gain for you humanitarian efforts.</p>
<h2>1. The Joy of Saving Human Lives</h2>
<p>It is such a wonderful feeling being able to help doctors save human lives. There are no perfect substitutes for human blood. The blood you donate is divided into various components according to the needs of patients. Each component can be used by different recipients for various purposes. Many newborn babies may benefit from a single blood donor as their blood requirements are smaller. Every time you donate blood, you can help up to 3 or 4 individual recipients. Be a hero by donating blood.</p>

<h2>2. Free Health Check-up</h2>
<p>You can donate blood only if you are fit enough to do so. Before every blood donation process, a series of health check-ups are performed on the donor totally free of cost. This will be of great benefit to you. For example, you will come to know of any blood pressure abnormalities. That will help diagnose some of the indolent diseases at the early stage before they get flared up and present with multiple medical problems. Further, after the blood is donated, the blood and blood products that are derived from them are screened for certain infections. You can choose to be informed if they find any abnormality in those screening tests. Frequent blood donations are good free health check-ups that will help you stay healthy. Here is an interesting story of how blood donation saved a grandmother&rsquo;s life.</p>
<h2>3. Reduces Risk of Heart Disease</h2>
<p>Regular blood donations help to keep the levels of iron in the body in check, especially in males. This has shown to reduce heart disease. Though iron is an essential element for the proper functioning of the body, excessive iron build up can result in excessive oxidative damage. Oxidative damage is the major culprit implicated in accelerated ageing, heart attacks, strokes etc. You can read more of the scientific information on the American Journal of Epidemiology.</p>
<h2>4. Burns Calories</h2>
<p>One time blood donation helps you shed 650 Kcal. This can aid you in your body weight control measures. However, blood can be donated safely once in two or three months and not more frequently. This will depend on your health status and your blood hemoglobin and iron levels.</p>
<h2>5. Reduces the Risk of Cancer</h2>
<p>High levels of iron have been  implicated in cancer. Theoretically, donating blood frequently will reduce the risk of cancers. More research is going on to find strong evidence on this one. However, the old myth that blood donations may lead to cancer has been put to the grave.  <button class="md-trigger" data-modal="modal-4" >Read more</button> </p>


  </div>

   <div class="md-modal md-effect-4" id="modal-4">
			<div class="md-content">
   <h3>Health Benefits of Donating Blood</h3>
				<div>
				<p>Blood donation is good for your health. It <a href="http://circ.ahajournals.org/content/103/1/52.full" target="_blank">reduces the amount of iron in the body and reduces the risk of heart disease.</a> According to studies published in the <a href="http://aje.oxfordjournals.org/content/148/5/445.full.pdf" target="_blank">American Journal of Epidemiology</a>, blood donors are 88% less likely to suffer a heart attack. This is simply because when someone gives blood, iron is being removed from their system, which can significantly cut the risk of heart disease.</p>
<p>When someone donates blood, they get a free health check-up. Blood donors receive a mini-physical and are told about their blood pressure levels as well as their cholesterol levels; two important factors in maintaining health. If a technician taking a patients levels notices they are high, they will let the patient know that they may need to get checked out by a physician. People who get their blood pressure and cholesterol checked regularly can find out about a health issue sooner, which could make all the difference in their well-being.</p>
  
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