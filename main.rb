require_relative 'Crud'

users=[
    {username: "marilyn", password:"password1"},
    {username: "jack", password:"password2"},
    {username: "arya", password:"password3"},
    {username: "jon", password:"password4"},
    {username: "heisenberg", password:"password5"},
    {username: "arwen", password:"password6"},
]
hashed_users = Crud.create_secure_users(users)
puts "These are your hashed users: #{hashed_users}"
