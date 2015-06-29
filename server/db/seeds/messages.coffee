Meteor.startup ->
  number_of_messages_required = 100
  if Messages.find().count() is 0
    console.log "Creating #{number_of_messages_required} messages"
    for number in [1..number_of_messages_required]
      user_ids = _.pluck(Meteor.users.find().fetch(), '_id')
      message =
        body: Fake.sentence()
        user_id: Random.choice user_ids
        created_at: new Date()

      Messages.insert message, validate: false, getAutoValues: false

