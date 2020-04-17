class Article < ApplicationRecord
    
    belongs_to :user
    belongs_to :product
    mount_uploader :image, CarrouselUploader


end
