class Pop < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :list
end
