###
* Uses jQuery!!!!111one
###

###====================================
=            ON DOM READY            =
====================================
###

###========================================
=            CUSTOM FUNCTIONS            =
========================================
###

toggleNav = ->
  if $('.next-steps').hasClass('show-nav')
    # Do things on Nav Close
    $('.next-steps').removeClass 'show-nav'
  else
    # Do things on Nav Open
    $('.next-steps').addClass 'show-nav'
  #$('#site-wrapper').toggleClass('show-nav');
  return



$ ->
  # Toggle Nav on Click
  $('.next-steps').mouseenter ->
    # Calling a function in case you want to expand upon this.
    toggleNav()
    return

  $('.next-steps').mouseleave ->
    # Calling a function in case you want to expand upon this.
    toggleNav()
    return

  return

# ---
# generated by js2coffee 2.1.0
