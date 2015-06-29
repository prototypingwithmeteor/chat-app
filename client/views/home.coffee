Template.home.rendered = ->
  Meteor.setTimeout(->
    $('#chat_window')[0].scrollTop = $('#chat_window')[0].scrollHeight
  , 0)
Template.home.helpers(
  'messages': ->
    Messages.find()
  'users': ->
    Meteor.users.find()
)
