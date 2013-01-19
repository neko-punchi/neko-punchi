# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(($)->
  #loading
  $( ".dialog-modal" ).dialog({
    modal: true,
    autoOpen: false,
    height: 500,
    width: 600,
    buttons: {
        "閉じる": (event) ->
            sound = $("#ka")
            sound[0].play()
            $(this).dialog("close");
    }
  })
  $('.exam_button').click(->
    quiz_num = $(this).attr("value")
    $('#' + quiz_num).dialog('open')
    sound = $("#pi")
    sound[0].play()
  )

  $('.exam_button').button({ text: true, icons: { primary :'ui-icon-carat-1-e'}})
  $('.submit_button').button({ text: true, icons: { primary :'ui-icon-carat-1-e'}})
  $('.answer_button').button({ text: true, icons: { primary :'ui-icon-carat-1-e'}})

  #submit button
  $('.submit_button').click(->
     form = $(this).parent()
     answer = form.children("input[name=answer]").val()
     quiz_id = form.children("input[name=quiz_id]")
     alert(quiz_id.val())
     quiz_number = form.children("input[name=quiz_number]").val()
     #alert(quiz_number)
     request = "quiz_id="
     request += quiz_id.val()
     request += "&answer="
     request += answer
     #alert(request)

     alert("pre sound method")

     pu = $("#pu")
     pu[0].play()

     alert("pre disable method")

     form.find("label").button('disable')
     $(quiz_number).button('disable')

     alert("pre ajax method")

     $.ajax({
        url: "/exams/answer",
        type: "POST",
        cache: false,
        data: request
        success: (data)->
            if data.isCorrect
                line = form.children("p[name=message]")
                line.text(data.msg)
                line2.animate({
                    width: "100%",
                    fontSize: "2em",
                    opacity: 1.0,
                    color: "red" 
                }, 200 );
                puroro = $("#puroro")
                puroro[0].play()
            else
                line = form.children("p[name=message]")
                line.text(data.msg)
                line2 = form.children("p[name=correct_answer]")
                line2.text(data.value)
                line2.animate({
                    width: "100%",
                    opacity: 0.8,
                    fontSize: "2em"
                }, 200 ,"easeInQuart");
                poka = $("#poka")
                poka[0].play()

        error: (xhr, status, err)->
            alert("error")
     })
  )
  #answer button
  $('.answer_button').click(->
     answer = $(this).text()
     #alert(answer)
     #following are quiz_id search block
     form = $(this).parent()
     quiz_id = form.children("input[name=quiz_id]")
     alert(quiz_id.val())
     quiz_number = form.children("input[name=quiz_number]").val()
     #alert(quiz_number)
     request = "quiz_id="
     request += quiz_id.val()
     request += "&answer="
     request += answer
     #alert(request)

     alert("pre sound method")

     pu = $("#pu")
     pu[0].play()

     alert("pre disable method")

     form.find("label").button('disable')
     $(quiz_number).button('disable')
     
     alert("pre ajax method")
     
     $.ajax({
        url: "/exams/answer",
        type: "POST",
        cache: false,
        data: request
        success: (data)->
            #alert(data.msg)
            if data.isCorrect
                line = form.children("p[name=message]")
                line.text(data.msg)
                #line2.css("display", "none")
                line2 = form.children("p[name=correct_answer]")
                line2.text("正解じゃ")
                line2.animate({
                    width: "100%",
                    fontSize: "2em",
                    opacity: 1.0,
                    color: "red" 
                }, 200 );
                puroro = $("#puroro")
                puroro[0].play()
            else
                line = form.children("p[name=message]")
                line.text(data.msg)
                line2 = form.children("p[name=correct_answer]")
                line2.text(data.value)
                line2.animate({
                    width: "100%",
                    opacity: 0.8,
                    fontSize: "2em"
                }, 200 ,"easeInQuart");
                poka = $("#poka")
                poka[0].play()
            #alert(line.text())

        error: (xhr, status, err)->
            alert("error")
     })

  )
)
