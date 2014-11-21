// add a border on the picture when hovering
$(document).ready(function () {
    $("#Image1").hover(function () {
        $("#Image1").addClass("bigBorder");
    }, function () {
        $("#Image1").removeClass("bigBorder");
    });
});

//----------------------------------------------------
