# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(($)->
  $('#exam-question').hide()
  $('#exam-simple-submit').live('click', -> alert("loading"))
  $('#start-link')
    .live("ajax:complete", (xhr)->
      $('#exam-pre').hide()
      $('#exam-question').show()
    )
    .live("ajax:beforeSend", (xhr)->
      $('#time').append('<div>Loading...</div>')
    )
    .live("ajax:success", (event, data, status, xhr)->
      $('#exam-one').empty()
      $('#exam-one').append('<h1>問題</h1>')
      $('#exam-one').append('<div id=\'exam-text\'><p>' + data.text + '</p></div>')
      ##$('#exam-one').append('<input type="submit" value="abc" />')
      ##for elm in data.choose
      ##  $('#exam-one').append(elm)
    )
    .live("ajax:error", (data, status, xhr)->
      alert("failure!!!")
    )
) 
