Template.home.rendered = ->
  Meteor.setTimeout(->
    $('#chat_window')[0].scrollTop = $('#chat_window')[0].scrollHeight
  , 0)
Template.home.helpers(
  'messages': ->
    Messages.find()
  'online_users': ->
    # Get the presences
    presences = Presences.find(state: 'online').fetch()
    # Get the user ids from the presences
    online_user_ids = _.pluck(presences, 'userId')
    # find those users
    Meteor.users.find(_id: $in: online_user_ids)
)
