$ ->
  $.ajaxSetup
    beforeSend: (xhr) ->
      token = $('meta[name="csrf-token"]').attr('content')
      if token? then xhr.setRequestHeader('X-CSRF-Token', token)
