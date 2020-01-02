class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :books, through: :reviews

    validates :username, :password_digest, presence: true
    validates :username, uniqueness: true

end
