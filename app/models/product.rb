class Product < ApplicationRecord
  mount_uploader :img, ImageUploader
  belongs_to :user
  belongs_to :article
end
