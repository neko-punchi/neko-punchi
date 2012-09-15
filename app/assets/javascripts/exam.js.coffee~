# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(($)->
  #loading
  $( ".dialog-modal" ).dialog({
    height: 340,
    modal: true,
    autoOpen: false
  })
  $('.exam_button').click(->
    quiz_num = $(this).attr("value")
    $('#' + quiz_num).dialog('open')
  )

  $('.exam_button').button({ text: true, icons: { primary :'ui-icon-carat-1-e'}})
  $('.submit_button').button({ text: true, icons: { primary :'ui-icon-carat-1-e'}})

  $('#exam-simple-submit').live('click', -> alert("loading"))
  #submit button
  $('.submit_button').click(->
     $(this).parent().submit()
  )
)
