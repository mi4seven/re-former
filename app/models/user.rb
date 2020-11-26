class User < ApplicationRecord
    validates :username, :email, :password, presence: true
    validates :username, length: {minimum: 2}
    #validates :username, uniqueness: {scope: :username, message: "A User with that username already exists."}        
    #validates :email, uniqueness: {scope: :email, message: "A User with that email already exists."}    
    #validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ , message: "Example email is re-former@gmail.com"} 
end
