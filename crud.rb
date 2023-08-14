require 'bcrypt'

users=[
    {username: "marilyn", password:"password1"},
    {username: "jack", password:"password2"},
    {username: "arya", password:"password3"},
    {username: "jon", password:"password4"},
    {username: "heisenberg", password:"password5"},
    {username: "arwen", password:"password6"},
]

def create_hash_digest(password) 
    BCrypt::Password.create(password)
end

#verification method:
def verify_hash_digest(password)
    BCrypt::Password.new(password)
end

#create safe passwords for each user:
def create_sercure_users(list_of_users)
    list_of_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
end

new_users =  create_sercure_users(users)
puts new_users

def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
    
        if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
            return user_record
        end
    end 
    "Credentials were incorrect"
end
# new_password = create_hash_digest("password1")
# puts new_password == "password1"

p authenticate_user("heisenberg", "password5", new_users)