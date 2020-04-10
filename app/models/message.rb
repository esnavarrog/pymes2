class Message < ApplicationRecord
    belongs_to :product
    validates :name, :body, :email, presence: true, length: { minimum: 3 }
end
