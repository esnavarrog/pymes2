class Category < ApplicationRecord
    validates :name, presence: true
    has_many :has_categories
    has_many :products, through: :has_categories

    DROPDOWN_LIST = [ "Comida Rápida", "Delivery", "Servicios" ]
end
