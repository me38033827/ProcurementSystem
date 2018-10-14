$(document).ready(function()
{
    $(".sidebar").hover(function() {
        $("#sidebar_box").show();
        $(".sidebar_top s").addClass("s_down");
    },
    function() {
        $("#sidebar_box").hide();
        $(".sidebar_top s").removeClass("s_down");
    });
    $(".sidebar_item dd").hover(function() {
        $(this).find("h3").addClass("sidebar_focus");
        $(this).find(".sidebar_popup").show(0);
    },
    function() {
        $(this).find("h3").removeClass("sidebar_focus");
        $(this).find(".sidebar_popup").hide(0);
    });
});