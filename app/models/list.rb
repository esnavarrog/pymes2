class List < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_many :pops, dependent: :destroy

  validates :title, length: { in: 4..40 }
end
