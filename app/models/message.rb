class Message < ApplicationRecord
    VALIDA_FORMATO_CORREO = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    belongs_to :product
    validates :name, :body, :email, presence: true, length: { minimum: 3 }
    validates :email, format: { with: VALIDA_FORMATO_CORREO }
end
