# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(($)->
  #loading
  $('#exam-question').hide()
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

  $('#exam-simple-submit').live('click', -> alert("loading"))
  #start link click
  $('#start-link')
    .on("ajax:complete", (event, data, status)->
      
      $('#exam-pre').hide()
      res = $.parseJSON(data.responseText)
      $('#exam-number').empty()
      $('#exam-text').empty()
      $('#exam-answer').empty()

      $('#exam-number').text("問題:#{res.number}")
      $('#exam-text').text("#{res.quiz.text}")
      $('#exam-answer').append("<input type='hidden' name='id' value=\"#{res.quiz.id}\"/>")
      if res.quiz.choose == null
        $('#exam-answer').append("<input type='text' name='answer' value=''/>")
        $('#exam-answer').append("<input type='submit' value='回答'/>")
      else
        for elm in res.quiz.choose
          $('#exam-answer').append("<label  class='exam_button'>#{elm}</label>")
          $('.exam_button').button({ text: true, icons: { primary :'ui-icon-carat-1-e'}})
          $('.exam_button').click(-> alert("aaa"))
       
      $('#exam-question').show()
    )
    .live("ajax:beforeSend", (xhr)->
      $('#time').append('<div>Loading...</div>')
    )
    .live("ajax:error", (data, status, xhr)->
      alert("failure!!!")
    )
) 
