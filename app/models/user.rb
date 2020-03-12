class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  has_many :products, dependent: :destroy
  has_many :lists, dependent: :destroy

  def online?
    update_at > 3.minutes.ago
  end
end
