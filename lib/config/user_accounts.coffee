password_field  = AccountsTemplates.removeField 'password'
AccountsTemplates.removeField 'email'
AccountsTemplates.addFields([
  _id: 'username'
  type: 'text'
  required: true
  displayName: 'Username'
,
  _id: 'name'
  type: 'text'
  required: true
  displayName: 'Full Name'
,
  password_field
])
