#This is how you convert this to a module:
module Crud 

    require 'bcrypt'
    puts "Module Crud activated"

    def self.create_hash_digest(password) 
        BCrypt::Password.create(password)
    end

    #verification method:
    def self.verify_hash_digest(password)
        BCrypt::Password.new(password)
    end

    #create safe passwords for each user:
    def self.create_secure_users(list_of_users)
        list_of_users.each do |user_record|
            user_record[:password] = create_hash_digest(user_record[:password])
        end
        list_of_users
    end


    def self.authenticate_user(username, password, list_of_users)
        list_of_users.each do |user_record|
        
            if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
                return user_record
            end
        end 
        "Credentials were incorrect"
    end
end

#Instead of Crud.whatever I could use self.whatever
#That is how you reference class methods