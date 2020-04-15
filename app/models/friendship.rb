class Friendship < ApplicationRecord
    belongs_to :follower, class_name: "User"
    belongs_to :followed, class_name: "Product"

    validates :follower_id, presence: true
    validates :followed_id, presence: true
end
