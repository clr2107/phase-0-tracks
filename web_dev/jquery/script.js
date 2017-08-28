$(document).ready(function() {
  $("p").click(function(){
    $(this).hide();
});
  $("button").click(function(){
    $("div").animate({left: '400px'});

  });
});
