class Users3 < ApplicationRecord
    validates :name, presence: true, length: {maximum: 50}
    validates :email, presence: true, length: {maximum: 255}

    has_secure_password
    validates :password, presence: true, length: {minimum: 6}
end
