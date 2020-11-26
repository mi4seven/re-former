class User < ApplicationRecord
    #EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i
    validates :username, :email, :password, presence: true
    validates :username, length: {minimum: 2}
    validates :email, uniqueness: {scope: :email, message: "A User with that email already exists."}    
    validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ , message: "Example email is micro_redit@gmail.com.au"} 
end
