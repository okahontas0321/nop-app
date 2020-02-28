$(function(){
  $(".body__body2--tops--machinebox--machineno01--yearyearbox--yearyear--month a").on("click", function(){
    let id = $(this).attr("href");
    let position = $(id).offset().top;
    $("html, body").animate({
      "scrollTop": position
    }, 500);
    return false;
  })
})