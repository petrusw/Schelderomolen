// add a border on the buttons when hovering
$(document).ready(function () {
    //$(".Button").hover(function () {
    //    $(".Button").addClass("bigBorder");
    //}, function () {
    //    $(".Button").removeClass("bigBorder");
    //}),
    $(".button").addClass("bigBorder2"),

    $(".button").hover(function () {
        $(this).removeClass("bigBorder2");
        $(this).addClass("bigBorder");
       /* $(this).fadeTo(100, 1);*/
        $("topBarButton").addClass("textColorH3");
        //$(this).css("background-color", "#000000");

    }, function () {
        $(this).removeClass("bigBorder");
        $(this).addClass("bigBorder2");
       /* $(this).fadeTo(100, 0.5);*/
        $("topBarButton").removeClass("textColorH3");
        //$(this).css("background-color", "#464040");

    }),
    $(".button").focus(function () {
        $(this).removeClass("bigBorder2");
        $(this).addClass("bigBorder");
       /* $(this).fadeTo(100, 1);*/
        $("topBarButton").addClass("textColorH3");
        //$(this).css("background-color", "#000000");
    }, function () {
        $(this).removeClass("bigBorder");
        $(this).addClass("bigBorder2");
        //$(this).fadeTo(100, 0.5);
        $("topBarButton").removeClass("textColorH3");
        //$(this).css("background-color", "#464040");
    }),

    $("#footer").hover(function () {
        $(this).addClass("collapse");
    }, function(){
        $(this).removeClass("collapse");
    });
    
});

//----------------------------------------------------
