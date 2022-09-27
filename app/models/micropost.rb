class Micropost < ApplicationRecord
    belongs_to :user2
    validates :context, length: {maximum: 10},
        presence: true 
end
