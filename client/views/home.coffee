Template.home.helpers(
  'messages': ->
    Messages.find()
  'users': ->
    Meteor.users.find()
)
