class User < ApplicationRecord
    validates :username, presence: true
    validates :username, uniqueness: { message: 'Username not available.'}
    validates :password, presence: true
end
