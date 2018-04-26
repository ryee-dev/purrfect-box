$(document).on('turbolinks:load', function(){
   $(".add-box").click(function(){
       $(".box-form").fadeIn('slow');
       $(".current-boxes").hide();
   });

    $(".exit-form").click(function(){
        $(".box-form").hide();
        $(".current-boxes").fadeIn('slow');
    });
});