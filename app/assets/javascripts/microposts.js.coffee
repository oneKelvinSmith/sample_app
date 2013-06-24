maxCharacters = 140

characterCountdown = ->
  remaining = maxCharacters - jQuery("#micropost_content").val().length
  message = " characters remaining"
  if remaining == 1
    message = " character remaining"
  else if remaining < 0
    message = " too many characters"
  jQuery(".countdown").text remaining + message

jQuery ->
  characterCountdown()
  $("#micropost_content").change characterCountdown
  $("#micropost_content").keyup characterCountdown
