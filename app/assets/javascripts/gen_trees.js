// Place all the behaviors and hooks related to the matching controller here.

//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree ./tree



/*
$(function() {

    $("button").click(funct...);

});
*/

var load = function(id){
    $.get("/gen_trees/" + id + "/getNodes.json",function(data,status){
        if (status == "success"){
            $.each(data, function(key, value){
                //alert(key)
                d=document.createElement('div');
                $(d).html(key + ". " + value.name).appendTo($("#result")) //main div

                if (key > 15) return false;
            });
        }
    });

};
