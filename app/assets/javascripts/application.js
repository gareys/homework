// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//Creates a funtion to include the "in" class on #myAlert to fade in the alert
//Add id="myAlert" to html div you wish to fade in
//See application.css in /assets/stylesheets/application.css

function showAlert(){
  $("#myAlert").addClass("in")
}

window.setTimeout(function () {
    showAlert();
}, 250);