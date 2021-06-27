class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true
    validates :username, uniqueness: { message: 'Username not available.'}
    validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }
    validates :password, presence: true
end
