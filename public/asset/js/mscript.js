$(document).ready(function(){
    var input = document.querySelector("#phone");
    window.intlTelInput(input);

    $(".contact-a").click(function(e){
        
        var obj = $("#contact-req-div .form-wrapper");
        var doc_h = $(window).height();
        var mval = (doc_h - obj.outerHeight()) / 2;
    
        obj.css('margin-top', mval);
        $(".btn-send").css('transition', '0.3s');
        $("#contact-req-div").css('visibility', 'visible');
    });
    
    $("body").click(function(e){
        if($(e.target).attr("id") == "contact-req-div"){
            $(".btn-send").css('transition', 'unset');
            $("#contact-req-div").css('visibility', 'hidden');
        }
    });
    
    $(window).resize(function(){
        var obj = $("#contact-req-div .form-wrapper");
        var doc_h = $(window).height();
        var mval = (doc_h - obj.outerHeight()) / 2;
    
        obj.css('margin-top', mval);
    });

});



