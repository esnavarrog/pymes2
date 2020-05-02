class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook, :google_oauth2]

  mount_uploader :image, AvatarUploader

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
      end
    end
    def self.from_omniauth(auth)
      where(provider: auth['provider'], uid: auth['uid']).first_or_create do |user|
      user.email = auth['info']['email']
      user.password = Devise.friendly_token[0,20]
      user.name = auth['info']['first_name'] # assuming the user model has a name
      user.lastname = auth['info']['last_name']
      user.image = auth['info']['image'] # assuming the user model has an image
      user.date_of_birth = auth['info']['user_birthday']
    end
  
  end
  has_many :products, dependent: :destroy
  has_many :lists, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_rich_text :biografia
  # has_many :active_friendships, class_name: "Friendship", foreign_key: "follower_id", dependent: :destroy
  # has_many :passive_friendships, class_name: "Friendship", foreign_key: "followed_id", dependent: :destroy
  # has_many :following, through: :active_friendships, source: :followed
  
  # def follow(product)
  #   active_friendships.create(followed_id: product.id)
  # end
  # def unfollow(product)
  #   active_friendships.find_by(followed_id: product.id).destroy
  # end
  # def following?(user)
  #   following.include?(user)
  # end

  def online?
    update_at > 3.minutes.ago
  end
end
