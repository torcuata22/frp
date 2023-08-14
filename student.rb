require_relative 'crud'

    class Student
        #we need to include the module inside the class:
        include Crud
        #attribute accessor: allows me to access info and change it (setter functionality)
        attr_accessor :first_name, :last_name, :email, :username, :password
        #attribute reader: read only (getter functionality)
        #attr_reader :username
        @first_name
        @last_name
        @email
        @username
        @password

        #init method to instantiate pbjects
        def initialize(first_name, last_name, username, email, password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = username
        @password = password
        end


        def to_s 
        "First name: #{@first_name}, Last name: #{last_name}, Username: #{username}, email address: #{@email}"
        end
    end

#I want the class to have access to methods in the module
    
    # @whatever are instance variables: variables that are associated to a specific instance of the class

loki = Student.new("Loki", "Marquez", "elLokito", "loki@meowmail.com", "miaumiau!")
frefre = Student.new("Freya", "Marquez", "theFrey", "freiby@meowmail.com", "mrewmrew!")

hashed_password = loki.create_hash_digest(loki.password) 
p hashed_password



