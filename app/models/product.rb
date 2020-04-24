class Product < ApplicationRecord
  before_update :set_visits_count
  mount_uploader :img, ImageUploader
  # after_create :save_categories
  belongs_to :user
  has_many :has_categories, dependent: :destroy
  has_many :categories, through: :has_categories
  has_many :lists, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :articles, dependent: :destroy
  has_rich_text :body
  # esto es de los follows
  # has_many :passive_friendships, class_name: "Friendship", foreign_key: "followed_id", dependent: :destroy
  # has_many :followers, through: :passive_friendships, source: :follower
  # def follow(product)
  #   active_friendships.create(followed_id: product.id)
  # end
  # def unfollow(product)
  #   active_friendships.find_by(followed_id: product.id).destroy
  # end
  # def following?(product)
  #   following.include?(product)
  # end
  # fin de follows
  scope :published, -> { where(published: true) }


  
  H_LIST = (0..23).to_a
  M_LIST = ["00", "15", "30", "45", "60", "75", "90"]
  DELIVERY = [['SI', true], ['NO', false]]
  
  def update_visits_count
    self.save if self.visits_count.nil?
    self.update(visits_count: self.visits_count + 1) if self.visits_count.present?
  end
  
  def set_visits_count
    self.visits_count ||= 0 
  end
  
  #  custom setter
  # def categories=(value)
  #   @categories = value
  # end



  private

  # def save_categories
  #   @categories.each do |category_id|
  #     HasCategory.create(category_id: category_id, product_id: self.id)
  #   end
  # end
end
