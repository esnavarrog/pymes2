class Product < ApplicationRecord
  mount_uploader :img, ImageUploader
  belongs_to :user
  has_many :has_categories, dependent: :destroy
  has_many :categories, through: :has_categories, dependent: :destroy
  # after_create :save_categories
  has_many :lists

  def categories=(value)
    @categories = value
  end

  private

  def save_categories
    @categories.each do |category_id|
      HasCategory.create(category_id: category_id, product_id: self.id)
    end
  end
end
