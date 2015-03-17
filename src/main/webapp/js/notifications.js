$('.notify').click( function() {
  $(this).animate({ opacity: 0 }, 300, function(){
    $(this).animate({ height: 'hide', margin: 'hide' }, 200);
  });
});   