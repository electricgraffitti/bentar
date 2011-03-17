 // This is the IE6 Js hack for submit button rollovers
$(document).ready(function() {
  $('form .submitbtn').hover(function() {
    $(this).css({"background": "url('../images/submit_button.png') 0px 0px no-repeat"});
    $(this).css({"background": "url('../images/submit_button.png') 0px -42px no-repeat"});
  },
  function() {
    $(this).css({"background": "url('../images/submit_button.png') 0px -42px no-repeat"});
    $(this).css({"background": "url('../images/submit_button.png') 0px 0px no-repeat"});
  });
});
// // Sets up the fade on the Main nav buttons
$(document).ready(function() {
  $('ul#main_nav_ul li').removeClass('highlight');
  $('ul#main_nav_ul li').append('<span class="hover" />').each(function(){
        
        var $span = $('> span.hover', this).css({opacity : 0});
        $(this).hover(function() {
          if ($(this ).hasClass('active')) {
            $span.stop().fadeTo(500, 0);
          } else {
           $span.stop().fadeTo(500, 1); 
          }
        }, function() {
          $span.stop().fadeTo(500, 0);
      });
      $(this).click( function() {
        $span.fadeTo(200, 0);
        $('ul#main_nav_ul a').removeClass('active');
        $(this).addClass('active');
      });
  });
});
// Sets the Main Nav Current Page Selection Tab
// $(document).ready(function() {
//   var url = location.pathname;
//   var current_link = $('#main_nav ul li a[href$="' + url + '"]');
//   if (url == "/") {
//      current_link.removeClass('active');
//      $('a#home').addClass('active');
//    } else {
//    current_link.addClass('active');
//    }
// });

$(document).ready(function() {
	testTable = $('#testimonials_index').dataTable({
		"bJQueryUI": true,
		"sPaginationType": "full_numbers"
	});
	adminTable = $('#admin_table').dataTable({
		"bJQueryUI": true,
		"sPaginationType": "full_numbers"
	});
	projectsTable = $('#projects_table').dataTable({
		"bJQueryUI": true,
		"sPaginationType": "full_numbers"
	});
	associatesTable = $('#associates_table').dataTable({
		"bJQueryUI": true,
		"sPaginationType": "full_numbers"
	});
});

$(document).ready(function() {
	var tabContainers = $('div#tabs > div');
  tabContainers.hide().filter(':first').show();

  $('div#tabs ul.tab_nav a').click(function () {
	  tabContainers.hide();
	  tabContainers.filter(this.hash).show();
	  $('div#tabs ul.tab_nav a').removeClass('selected');
	  $(this).addClass('selected');
	  return false;
  }).filter(':first').click();
});



// This is the Timer for the home page banners
$(document).everyTime(5000, function () {
  $('#banner_scroll_r').trigger('click');
});

function notify(flash_message) {

 var flash_div = $("#flash");
 flash_div.html(flash_message);
 flash_div.fadeIn(400);

 setTimeout(function() {
  flash_div.fadeOut(3000,
  function() {
   flash_div.html("");
   flash_div.hide()})},
 1400);
}

$(document).ready(function() {
	$("#flash").hide();
	var flash_message = $("#flash").html();
	msg = $.trim(flash_message);
 	if(msg != "") {
		notify(flash_message);
	}
});

// $(function() {
//     $(".media_image_carousel").jCarouselLite({
//         btnNext: ".next",
//         btnPrev: ".prev"
//     });
// });

$(document).ready(function() {
	// select the thumbnails and make them trigger our overlay 
	$("#triggers a").overlay({ 

	    // each trigger uses the same overlay with the id "gallery" 
	    target: '#gallery', 

	    // optional exposing effect 
	    expose: '#000000' 

	// let the gallery plugin do its magic! 
	}).gallery({ 

	    // the plugin accepts its own set of configuration options 
	    speed: 800 
	});
});











