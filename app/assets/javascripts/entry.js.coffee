# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(window).load ->
  $.each $('.resource'), ->
    hash = $(this).data('hash')
    $.get "/resource/get_elem/#{hash}", (data) =>
      $(this).empty()
      $(this).append data
