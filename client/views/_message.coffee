Template._message.helpers(
  username: ->
    #user_id
    # Get the user
    user = Meteor.users.findOne(@user_id)
    console.log user
    # Get the username
    return user.username
    
)
