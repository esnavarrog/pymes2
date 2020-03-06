class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :name, :last_name
  validates_uniqueness_of :username

  has_many :products

  def online?
    update_at > 3.minutes.ago
  end
end
