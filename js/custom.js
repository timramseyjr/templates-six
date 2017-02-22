jQuery(document).ready(function($) {
    /*$(window).on("resize load", function() {
        if (this.resizeTO) clearTimeout(this.resizeTO);
        this.resizeTO = setTimeout(function() {
            resizeIt();
        }, 500);
    });

    //Ready
    resizeIt();
    function resizeIt() {
        if ($(document.body).width() > slide_down_menu_on_width) {
            $(".footer .cell ul").css("display", "block");
            $(".footer .cell p").css("display", "block");
            $(".footer .cell div").css("display", "block");
            $(".footer .cell h2").removeClass();
        } else {
            $(".footer .cell ul").css("display", "none");
            $(".footer .cell p").css("display", "none");
            $(".footer .cell div").css("display", "none");
            $(".footer .cell h2").removeClass();
        }
    }
    $(".footer .cell h2").click(function() {
        if ($(document.body).width() > slide_down_menu_on_width) {
            return false;
        }
        if ($(this).hasClass("open")) {
            $(this).removeClass("open");
        } else {
            $(this).addClass("open");
        }
        $(this).parent().children("ul").stop(true, false).slideToggle(200);
        $(this).parent().children("p").stop(true, false).slideToggle(200);
        $(this).parent().children("div").stop(true, false).slideToggle(200);
    });*/
    $('[data-toggle="tooltip"]').popover();
});