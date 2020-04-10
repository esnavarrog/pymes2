class Category < ApplicationRecord
    validates :name, presence: true
    belongs_to :user
    has_many :has_categories
    has_many :products, through: :has_categories

    DROPDOWN_LIST = [ "Comida Rápida", "Delivery", "Servicios" ]
end
