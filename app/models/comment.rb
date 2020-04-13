class Comment < ApplicationRecord
    belongs_to :product
    belongs_to :user
    validates :body, presence: true, length: { minimum: 2 }
    scope :published, -> { where(published: true) }

end
