// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.



$(function() {

	$("button").click(function(){
	  $.get("/trees/getNodes.json",function(data,status){
	  	
	    if (status == "success"){
	    	$.each(data, function(key, value){
	    		//alert(key)
	    		d=document.createElement('div');
				$(d).html(key + ". " + value.name).appendTo($("#results")) //main div

	    		if (key > 15) return false;
	    	});
	    }
	  });

	});

}); 
