 <!DOCTYPE html>
<html> 
	<head>
	<%@taglib uri="/struts-tags" prefix="s"%>
	<script>
	
        $(document).ready(function() {
            // Show or hide the sticky footer button
            $(window).scroll(function() {
                if ($(this).scrollTop() > 200) {
                    $('.go-top').fadeIn(500);
                } else {
                    $('.go-top').fadeOut(300);
                }
            });

            // Animate the scroll to top
            $('.go-top').click(function(event) {
                event.preventDefault();

                $('html, body').animate({scrollTop: 0}, 300);
            })
        });    
    </script>
    
    
    <style type="text/css">
    .go-top {
    position: fixed;
    bottom: 0.75em;
    right: 0.5em;
    text-decoration: none;
    color: white;
    background-color: rgba(0, 0, 0, 0.25);
    font-size: 12px;
    padding: 10px;
    display: none;
    margin: 0;
}

.go-top:hover {
    background-color: rgba(0, 0, 0, 0.6);
    color: white;
    text-decoration: none;
}





#footerArea{

	width:100%;

	height:52px;

	background:#c8000a;

	clear:both;

	border-top:2px dotted #FDCE8E;

	}
	
  #footerHolder{
	width:1349px;
	margin:9px auto 0 auto;
	}
  #fh_left{

	width:500px;

	height:30px;

	float:left;

	line-height:30px;

	border-right:2px dotted #FDCE8E;

	color:#FFF;

	font-family: 'Roboto', sans-serif;
	
   text-align:center;
   
	font-size:14px;

	font-weight:300;

	}

#fh_left a{
	color:#FFF;
	text-decoration:none;
	}

#fh_middle{
	width:227px;

	height:30px;

	float:left;

	line-height:30px;

	color:#FFF;

	font-family: 'Roboto', sans-serif;

	font-size:12px;

	font-weight:300;

	}
  #fh_right{

	width:560px;

	height:30px;
	
    line-height:30px;
    
	float:left;
	color:#FFF;

	text-align:center;

	font-family: 'Roboto', sans-serif;

	font-size:14px;

	font-weight:300;

	}

   #fhm_left{

	width:100px;

	height:30px;

	float:left;

	text-align:center;

	line-height:30px;

	color:#FFF;

	font-family: 'Roboto', sans-serif;

	font-size:12px;

	font-weight:300;

	}

   #fhm_right{

	width:125px;
    height:30px;
	float:left;
	
	line-height:30px;

	border-right:2px dotted #FDCE8E;

	}

    </style>
	</head>
	
	<body>
	 <a href="#" class="go-top" style="display: inline;">Back to top</a>
			<!-- <div align="center" style="color: white; font-size: 20px">&copy; onlinebloodbook.com  2014</div> -->
			
			<div id="footerArea">

<div id="footerHolder">

<div id="fh_left"><a href="<s:url action="privacypolicyLink"/>">Disclaimer &amp; Privacy Policy</a>  |  <a href="#">Site Map</a>  | <a href="#">About Us</a> |  <a href="<s:url action="contactLink"/>">Contact Us</a>  |  <a href="<s:url action="feedbackLink4"/>">Feedback</a> </div><!--end of fh_left-->

<div id="fh_middle">

<div id="fhm_left">Follow Us On</div><!--end of fhm_left-->

<div id="fhm_right">  <a href="https://www.facebook.com/pages/Onlinebloodbook/849671328445053" target="_blank"><img src="images/fb-icon.png" width="29" height="30" /></a> <a href="#" target="_blank"><img src="images/tw-icon.png" width="29" height="30" /></a> <a href="#" target="_blank"><img src="images/yt-icon.png" width="29" height="30" /></a><a href="#" target="_blank"><img src="images/in-icon.png" width="29" height="30" /></a></div><!--end of fhm_right-->



</div><!--end of fh_middle-->

<div id="fh_right">
  Copyright &copy; 2014 by <a href="<s:url action="homeLink2"/>" style="color: white;">www.onlinebloodbook.com</a>    , All Rights Reserved. </div><!--end of fh_right-->

</div><!--end of footerHolder-->



</div><!--end of footerArea-->
	</body>
</html>