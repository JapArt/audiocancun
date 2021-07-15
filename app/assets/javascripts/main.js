$(window).scroll(function() {
    if ($(this).scrollTop()>100)
     {
        $('.navbar-inverse').fadeIn(200);
     }
    else
     {
      $('.navbar-inverse').fadeOut(200);
     }
 });

$(document).ready(function(){

  $('.navbar-inverse').hide();

  var carouselContainer = $('#carousel-index');
  var slideInterval = 6000;

 
  function toggleCaption(){

      var head1 = carouselContainer.find('.active').find('h2#head1');
      var body1 = carouselContainer.find('.active').find('p');
      var image1 = carouselContainer.find('.active').find('img#img1');
      
      var tl = new TimelineMax({delay:0.5});
      tl.fromTo(head1,1,{css:{y:-200, autoAlpha:0}},{css:{y:0, autoAlpha:1}}, "heading1");
      tl.fromTo(body1,1,{css:{x:400, autoAlpha: 0}},{css:{x:0, autoAlpha:1}}, "heading1+=0.5");
      tl.fromTo(image1,1,{css:{y:400, autoAlpha: 0}},{css:{y:0, autoAlpha:1}}, "heading1+=0.3");

      var head2 = carouselContainer.find('.active').find('h2#head2');
      var body2 = carouselContainer.find('.active').find('p');
      var tl2 = new TimelineMax({delay:0.5});
      tl2.fromTo(head2,1,{css:{y:-200, autoAlpha:0}},{css:{y:0, autoAlpha:1}}, "heading2");
      tl2.fromTo(body2,1,{css:{x:400, autoAlpha: 0}},{css:{x:0, autoAlpha:1}}, "heading2+=0.5");

      var head3 = carouselContainer.find('.active').find('h2');
      var body3 = carouselContainer.find('.active').find('p');
      var image3 = carouselContainer.find('.active').find('img#img3');
      var tl3 = new TimelineMax({delay:0.5});
      tl3.fromTo(head3,1,{css:{y:-200, autoAlpha:0}},{css:{y:0, autoAlpha:1}}, "heading3");
      tl3.fromTo(body3,1,{css:{x:400, autoAlpha: 0}},{css:{x:0, autoAlpha:1}}, "heading3+=0.5");
      tl3.fromTo(image3,1,{css:{y:400, autoAlpha: 0}},{css:{y:100, autoAlpha:1}}, "heading3+=0.5");
  }

  carouselContainer.carousel({
      interval: slideInterval,
      cycle: true,
      pause: false,
  }).on('slid.bs.carousel slide.bs.carousel', toggleCaption).trigger('slid.bs.carousel');

  $('#carousel-index').on('slide.bs.carousel', function () {
    carouselContainer.find('h2').css('visibility', 'hidden');
    carouselContainer.find('p').css('visibility', 'hidden');
    carouselContainer.find('img').css('visibility', 'hidden');
  });
  

});
