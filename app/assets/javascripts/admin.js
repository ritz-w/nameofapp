
document.addEventListener("turbolinks:load", function() {
  docReadyJS();
})

//on page load
var docReadyJS = function() {
  //when document is ready
$(document).ready(function(){
  //generate random colors for overlay
  var colors = ["#dd859e", "#f0dcc0", "#d5d5d5", "#ff426a", "#b6caf1"], c;

$(".dimmed-overlay").css("backgroundColor", function(index, value) {
    // if `index` : `0` define `c` as copy of `colors` array
    if (!index) c = colors.slice();
    return c.splice(Math.floor(Math.random() * c.length), 1)
});

$(".artist-name-rows").css("backgroundColor", function(index, value) {
    // if `index` : `0` define `c` as copy of `colors` array
    if (!index) c = colors.slice();
    return c.splice(Math.floor(Math.random() * c.length), 1)
})

  //prepare landing page slider
  // $('.center').slick({
  // centerMode: true,
  // centerPadding: '30px',
  // slidesToShow: 3,
  // responsive: [
  //   {
  //     breakpoint: 768,
  //     settings: {
  //       arrows: false,
  //       centerMode: true,
  //       centerPadding: '30px',
  //       slidesToShow: 2
  //     }
  //   },
  //   {
  //     breakpoint: 480,
  //     settings: {
  //       arrows: false,
  //       centerMode: true,
  //       centerPadding: '30px',
  //       slidesToShow: 1
  //     }
  //   }]
  // });
  //prepare products page slider
  $('.regular').slick({
        dots: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        adaptiveHeight: true
      });
//prepare page responsivity
  $( window ).resize(function() {
    if($(window).width() < 767) {
      window.sessionStorage.clear();
     $(".navbar-fixed-side").css("width", "100%");
     $("#toggle").css("display", "none");
    } else {
      $(".navbar-fixed-side").css("width", "20%");
      $("#toggle").css("display", "block");
    }});

  $("#toggle").click( function(){
    console.log("toggleclicked")
      if ($(this).hasClass("isDown") ) {
          window.sessionStorage.clear();
          $( ".navbar-fixed-side" ).animate({ "width": "10%" }, "fast" );  
          $( ".content-container" ).animate({ "margin-left": "10%" }, "fast" );
          $( ".navbar-icons").css("display", "block");
          $( ".navbar-links").css("display", "none");
          $(this).removeClass("isDown");
          var menuDown = $( ".navbar-links").css("display");
          console.log(menuDown)
          sessionStorage.setItem('menuStatus', 'menuDown');
          console.log(sessionStorage.getItem('menuStatus'));
      } else {
          window.sessionStorage.clear();
          $( ".navbar-fixed-side" ).animate({ "width": "20%" }, "fast" );
          $( ".content-container" ).animate({ "margin-left": "20%" }, "fast" );
          $( ".navbar-links").css("display", "block");
          $( ".navbar-icons").css("display", "none");
          $(this).addClass("isDown");
          var menuUp = $( ".navbar-links").css("display");
          console.log(menuUp);
          sessionStorage.setItem('menuStatus', 'menuUp');
          console.log(sessionStorage.getItem('menuStatus'));
    }
    return false;
    });
      if (sessionStorage.getItem('menuStatus') === 'menuDown') {
          $(".navbar-fixed-side").css({"width": "10%"});
          $(".content-container").css({"margin-left": "10%"});
          $( ".navbar-links").css("display", "none");
          $( ".navbar-icons").css("display", "block");
          $("#toggle").removeClass("isDown");
        } else if (sessionStorage.getItem('menuStatus') === 'menuUp') {
          $(".navbar-fixed-side").css({"width": "20%"});
          $(".content-container").css({"margin-left": "20%"});
          $( ".navbar-links").css("display", "block");
          $( ".navbar-icons").css("display", "none");
        }
        else {
          return false;
        }
    });
  
  }




