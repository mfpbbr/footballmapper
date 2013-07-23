// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.slider
//= require jquery.ui.dialog
//= require jquery.tablesorter
//= require underscore
//= require twitter/bootstrap
//= require_tree .

$(document).ready(function() {
	$( "#schools_dialog" ).dialog({
	  title: "All the schools",
	  width: 700,
	  height: 580,
	  autoOpen: false,
	  buttons: [{
		text: "Close",
		click: function() {
		  $(this).dialog("close")
		}

	  }]
	});	

	$("#schools_link").on("click", function() {
	  $("#schools_dialog").dialog("open");	
	});

	$("#schools_table tr:odd").css("background-color", "#eeeeee");

	$( "#about_dialog" ).dialog({
	  title: "About FootballMapper",
	  width: 700,
	  height: 580,
	  autoOpen: false,
	  buttons: [{
		text: "Close",
		click: function() {
		  $(this).dialog("close")
		}

	  }]
	});	

	$("#about_link").on("click", function() {
	  $("#about_dialog").dialog("open");	
	});

	$( "#contact_dialog" ).dialog({
	  title: "Contact Me",
	  width: 700,
	  height: 580,
	  autoOpen: false,
	  buttons: [{
		text: "Close",
		click: function() {
		  $(this).dialog("close")
		}

	  }]
	});	

	$("#contact_link").on("click", function() {
	  $("#contact_dialog").dialog("open");	
	});

	// table sorter
	$("#schools_table").tablesorter(); 

	$( "#sign_in_dialog" ).dialog({
	  title: "Sign In",
	  width: 200,
	  height: 150,
	  autoOpen: false,
	  buttons: [{
		text: "Close",
		click: function() {
		  $(this).dialog("close")
		}

	  }]
	});	

	$("#sign_in_link").on("click", function() {
	  $("#sign_in_dialog").dialog("open");	
	});

})
