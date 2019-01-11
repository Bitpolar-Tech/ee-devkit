
// jQuery Start
$(function() {



  // GOOGLE OPT-OUT
  //
  //
  // disableStr (Set via Google Tag Manager)
  $('.ga-opt-out').click(function(e){
    document.cookie = disableStr + '=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/';
    window[disableStr] = true;
    alert('Das Tracking durch Google Analytics wurde in deinem Browser für diese Website deaktiviert.');
  });



  //  Scroll smoothly to anchor
  //
  //
  // Select all links with hashes
  $('a[href*="#"]').not('[href="#"]').not('[href="#0"]').not('.dropdown-toggle').click(function(event) {
    // On-page links
    if (
      location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
      &&
      location.hostname == this.hostname
    ) {
      // Figure out element to scroll to
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      // Does a scroll target exist?
      if (target.length) {
        // Only prevent default if animation is actually gonna happen
        event.preventDefault();
        $('html, body').animate({
          scrollTop: target.offset().top - 40
        }, 500, function() {
          // Callback after animation
          // Must change focus!
          // var $target = $(target);
          // $target.focus();
          // if ($target.is(":focus")) { // Checking if the target was focused
          //   return false;
          // } else {
          //   $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
          //   $target.focus(); // Set focus again
          // };
        });
      }
    }
  });



});
