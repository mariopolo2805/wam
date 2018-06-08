$(document).ready(function() {
    $('.slider').slider();
    $('.parallax').parallax();
    $('select').material_select();
    $('.button-collapse').sideNav();
    $('.modal').modal({
      inDuration: 300, // Transition in duration
      outDuration: 200, // Transition out duration
    }
  );
});