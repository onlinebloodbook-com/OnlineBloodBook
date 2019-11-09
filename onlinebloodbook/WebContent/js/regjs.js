$(document).ready(function(){
  $("#createAccount").click(function(){
    $("#register").css("-webkit-transform","rotateY(90deg)");
    $("#register").css("transform","rotateY(90deg)");
    $("#registerme").css("display", "block");
    setTimeout(function(){
      $("#register").css("display", "none");
      $("#registerme").css("-webkit-transform","rotateY(0deg)");
      $("#registerme").css("transform","rotateY(0deg)");
    },2100);
  });
});