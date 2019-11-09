<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Blood Book</title>
<link rel="stylesheet" href="css/rightmenu.css" type="text/css">

 <link rel="stylesheet" href="css/styleimg1.css" type="text/css">
 
</head>
<body>
  <div class="box">
  <%-- <s:actionerror/> --%>
  <s:form action="login" method="POST">
    <div class="tag">Login</div>
    <div>Log in to your account !</div>
    <div>
    <s:textfield name="userId" value="" required="true" cssClass="input1" placeholder="Enter Login id" />
     
    </div>
    <div>
    <s:password name="userPassword" required="true" cssClass="input1" placeholder="Enter Password" />
     
    </div>
    <div>
      <button type="submit" class="btn">Login</button>
    </div>
    <div>
      <a href="#" class="forgot">forgot password?</a>
      </div>
  </s:form>
</div>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
 
 <br>
 <table  style="background-color: #BF0300">
 <tr>
<td><div class="fb-like" data-href="https://www.facebook.com/pages/Onlinebloodbook/849671328445053" data-width="225" data-layout="standard" data-action="like" data-show-faces="true" data-share="false"></div></td>
</tr>

<tr>
 <td><div class="fb-share-button" data-href="https://www.facebook.com/pages/Onlinebloodbook/849671328445053" data-layout="button_count"></div></td>
</tr>
</table>

<!-- <br>
<div id="outerContainer">
			<div id="imageScroller">
				<div id="viewer" class="js-disabled">

                    <a class="wrapper" ><img class="logo" id="MBL" src="images/q1.JPG" width="225" height="200"/></a>
                    <a class="wrapper" ><img class="logo" id="MBL" src="images/q2.JPG" width="200" height="200"/></a>
                    <a class="wrapper" ><img class="logo" id="MBL" src="images/q3.JPG" width="200" height="200"/></a>
                    <a class="wrapper" ><img class="logo" id="MBL" src="images/q4.JPG" width="200" height="200"/></a>
                    <a class="wrapper" ><img class="logo" id="MBL" src="images/q5.JPG" width="200" height="200"/></a>
                       
                         
					<a class="wrapper" href="http://www.apple.com" title="Apple"><img class="logo" id="apple" src="images/me.jpg" alt="Apple" /></a>

					<a class="wrapper" href="http://mozilla-europe.org/en/firefox" title="Firefox"><img class="logo" id="firefox" src="http://4.bp.blogspot.com/-jRt8aZu4Ll0/T6-D_vWMoLI/AAAAAAAAB3A/X_9xAH335nY/s1600/firefox.jpg" alt="Firefox" /></a>

					<a class="wrapper" href="http://jquery.com" title="jQuery"><img class="logo" id="jquery" src="http://4.bp.blogspot.com/-BQxDWdF3Riw/T6-EAgRIRII/AAAAAAAAB3I/abL9_Ip1dPw/s1600/jquery.jpg" alt="jQuery" /></a>

					<a class="wrapper" href="http://twitter.com" title="Twitter"><img class="logo" id="twitter" src="http://4.bp.blogspot.com/-IJjxlvI_XBg/T6-ECnqqpOI/AAAAAAAAB3Y/IXIDiIzJ5VI/s1600/twitter.jpg" alt="Twitter" /></a>

					<a class="wrapper" href="http://jqueryui.com" title="jQuery UI"><img class="logo" id="jqueryui" src="http://2.bp.blogspot.com/-IURWt7gcrj0/T6-EBbD9qBI/AAAAAAAAB3Q/IDChoFLqIL8/s1600/jqueryui.jpg" alt="jQuery UI" /></a>

				</div>
			</div>
		</div> -->
<br>
<script type="text/javascript">
$(function() {
  //remove js-disabled class
$("#viewer").removeClass("js-disabled");
  //create new container for images
$("<div>").attr("id", "container").css({ position:"absolute"}).width($(".wrapper").length * 170).height(170).appendTo("div#viewer");
//add images to container
$(".wrapper").each(function() {
$(this).appendTo("div#container");
});
//work out duration of anim based on number of images (100 second for each image)
var duration = $(".wrapper").length * 5000;
//store speed for later (distance / time)
var speed = (parseInt($("div#container").width()) + parseInt($("div#viewer").width())) / duration;
//set direction
var direction = "rtl";
//set initial position and class based on direction
(direction == "rtl") ? $("div#container").css("left", $("div#viewer").width()).addClass("rtl") : $("div#container").css("left", 0 - $("div#container").width()).addClass("ltr") ;
//animator function
var animator = function(el, time, dir) {
//which direction to scroll
if(dir == "rtl") {
  //add direction class
el.removeClass("ltr").addClass("rtl");
//animate the el
el.animate({ left:"-" + el.width() + "px" }, time, "linear", function() {
//reset container position
$(this).css({ left:$("div#imageScroller").width(), right:"" });
//restart animation
animator($(this), duration, "rtl");
//hide controls if visible
($("div#controls").length > 0) ? $("div#controls").slideUp("slow").remove() : null ;
});
} else {
  //add direction class
el.removeClass("rtl").addClass("ltr");
//animate the el
el.animate({ left:$("div#viewer").width() + "px" }, time, "linear", function() {
//reset container position
$(this).css({ left:0 - $("div#container").width() });
//restart animation
animator($(this), duration, "ltr");
//hide controls if visible
($("div#controls").length > 0) ? $("div#controls").slideUp("slow").remove() : null ;
});
}
}
//start anim
animator($("div#container"), duration, direction);
//pause on mouseover
$("a.wrapper").live("mouseover", function() {
//stop anim
$("div#container").stop(true);
//show controls
($("div#controls").length == 0) ? $("<div>").attr("id", "controls").appendTo("div#outerContainer").css({ opacity:0.7 }).slideDown("slow") : null ;
($("a#rtl").length == 0) ? $("<a>").attr({ id:"rtl", href:"#", title:"rtl" }).appendTo("#controls") : null ;
($("a#ltr").length == 0) ? $("<a>").attr({ id:"ltr", href:"#", title:"ltr" }).appendTo("#controls") : null ;
//variable to hold trigger element
var title = $(this).attr("title");
//add p if doesn't exist, update it if it does
($("p#title").length == 0) ? $("<p>").attr("id", "title").text(title).appendTo("div#controls") : $("p#title").text(title) ;
});
//restart on mouseout
$("a.wrapper").live("mouseout", function(e) {
//hide controls if not hovering on them
(e.relatedTarget == null) ? null : (e.relatedTarget.id != "controls") ? $("div#controls").slideUp("slow").remove() : null ;
//work out total travel distance
var totalDistance = parseInt($("div#container").width()) + parseInt($("div#viewer").width()); //work out distance left to travel
var distanceLeft = ($("div#container").hasClass("ltr")) ? totalDistance - (parseInt($("div#container").css("left")) + parseInt($("div#container").width())) : totalDistance - (parseInt($("div#viewer").width()) - (parseInt($("div#container").css("left")))) ;
//new duration is distance left / speed)
var newDuration = distanceLeft / speed;
//restart anim
animator($("div#container"), newDuration, $("div#container").attr("class"));
});
//handler for ltr button
$("#ltr").live("click", function() {
//stop anim
$("div#container").stop(true);
//swap class names
$("div#container").removeClass("rtl").addClass("ltr");
//work out total travel distance
var totalDistance = parseInt($("div#container").width()) + parseInt($("div#viewer").width());
//work out remaining distance
var distanceLeft = totalDistance - (parseInt($("div#container").css("left")) + parseInt($("div#container").width()));
//new duration is distance left / speed)
var newDuration = distanceLeft / speed;
//restart anim
animator($("div#container"), newDuration, "ltr");
});
//handler for rtl button
$("#rtl").live("click", function() {
//stop anim
$("div#container").stop(true);
//swap class names
$("div#container").removeClass("ltr").addClass("rtl");
//work out total travel distance
var totalDistance = parseInt($("div#container").width()) + parseInt($("div#viewer").width());
//work out remaining distance
var distanceLeft = totalDistance - (parseInt($("div#viewer").width()) - (parseInt($("div#container").css("left"))));
//new duration is distance left / speed)
var newDuration = distanceLeft / speed;
//restart anim
animator($("div#container"), newDuration, "rtl");
});
});
</script>
    

</body>
</html>