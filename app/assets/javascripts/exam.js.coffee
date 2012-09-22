# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

square = (x) -> x * x

$(($)->
  #loading
  $( ".dialog-modal" ).dialog({
    height: 340,
    modal: true,
    autoOpen: false,
    buttons: {
        "閉じる": (event) ->
            $(this).dialog("close");
    }
  })
  $('.exam_button').click(->
    quiz_num = $(this).attr("value")
    $('#' + quiz_num).dialog('open')
  )

  $('.exam_button').button({ text: true, icons: { primary :'ui-icon-carat-1-e'}})
  $('.submit_button').button({ text: true, icons: { primary :'ui-icon-carat-1-e'}})

  #submit button
  $('.submit_button').click(->
     answer = $(this).text()
     #alert(answer)
     #following are quiz_id search block
     form = $(this).parent()
     quiz_id = form.children("input[name=quiz_id]")
     #alert(quiz_id.val())
     request = "quiz_id="
     request += quiz_id.val()
     request += "&answer="
     request += answer
     #alert(request)


     $.ajax({
        url: "exams/answer",
        type: "POST",
        data: request
        success: (msg)->
            #alert(msg)
            line = form.children("p[name=message]")
            line.text(msg)
            #alert(line.text())

        error: (xhr, status, err)->
            alert("error")
     })

     #$(this).parent().submit()
  )
)
