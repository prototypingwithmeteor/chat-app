# This file is a template of an example Messages collection using
# Collection2 and Autoform. You can reuse in and get started quickly by replacing "Message" with your collection name 
# (and "Messages" with the plural, for those of you with a Cacti collection)
#
# We define global Collections and Schemas objects at the start
# for use in the client (see /client/helpers.coffee)
#
# Define them in each collection file avoids load order issues
#
@Collections = @Collections || {}
@Schemas = @Schemas ||  {}
#
# Setup the Mongo Collection
@Messages = Collections.Messages = new Mongo.Collection 'messages'

# Setup the Schema (singular)

Schemas.Message = new SimpleSchema(
  body:
    type: String
    autoform: afFieldInput: type: "textarea"
  user_id:
    type: String
    autoValue: ->
      @userId # @ = this
  created_at:
    type: Date
    defaultValue: new Date()
)
#
# Attach the Schema to the Collection
@Messages.attachSchema(Schemas.Message)
