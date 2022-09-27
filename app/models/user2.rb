class User2 < ApplicationRecord
    has_many :microposts
    validates  :name, presence: true
    validates  :email, presence: true
end
