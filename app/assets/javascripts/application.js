//= require jquery
//= require jquery_ujs
//= require materialize-sprockets
//= require_tree .


$('.button-collapse').sideNav({
      menuWidth: 300, // Default is 240
      closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
    }
  );
  $('.collapsible').collapsible();

$(document).ready(function(){
    $('.parallax').parallax();
     $('ul.tabs').tabs();
         $('.modal-trigger').leanModal();
         $('#modal1').closeModal();
         $('.slider').slider({
           full_width: true,
           interval: 10000
         });
    //  $('ul.tabs').tabs('select_tab', 'tab_id');
});
