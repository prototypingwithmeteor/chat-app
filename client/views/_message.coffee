Template._message.helpers(
  username: ->
    #user_id
    # Get the user
    user = Meteor.users.findOne(@user_id)
    # Get the username
    return user.username
    
)
