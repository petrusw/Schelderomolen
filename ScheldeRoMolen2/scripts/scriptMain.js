// add a border on the buttons when hovering
$(document).ready(function () {
    //$(".Button").hover(function () {
    //    $(".Button").addClass("bigBorder");
    //}, function () {
    //    $(".Button").removeClass("bigBorder");
    //}),
     $(".button").hover(function () {
         $(this).addClass("bigBorder");
         $(this).fadeTo(200, 1);
         $("topBarButton").addClass("textColorH3");
         $(this).css("background-color", "#000000");
     }, function () {
         $(this).removeClass("bigBorder");
         $(this).fadeTo(500, 0.5);
         $("topBarButton").removeClass("textColorH3");
         $(this).css("background-color", "#100f0f");
     });
});

//----------------------------------------------------
