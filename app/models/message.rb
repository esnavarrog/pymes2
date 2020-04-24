class Message < ApplicationRecord
    VALIDA_FORMATO_CORREO=/\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
    belongs_to :product
    validates :name, :body, :email, presence: true, length: { minimum: 3 }
    validates :email, format: { with: VALIDA_FORMATO_CORREO }
end
