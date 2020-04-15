class Product < ApplicationRecord
  mount_uploader :img, ImageUploader
  belongs_to :user
  has_many :has_categories, dependent: :destroy
  has_many :categories, through: :has_categories
  after_create :save_categories
  has_many :lists
  has_many :comments
  has_many :messages
  has_rich_text :body
  scope :published, -> { where(published: true) }

  validates :info, length: { maximum: 40 }

  
  def categories=(value)
    @categories = value
  end

  H_LIST = (0..23).to_a
  M_LIST = ["00", "15", "30", "45", "60", "75", "90"]
  DELIVERY = [['SI', true], ['NO', false]]




  private

  def save_categories
    @categories.each do |category_id|
      HasCategory.create(category_id: category_id, product_id: self.id)
    end
  end
end
