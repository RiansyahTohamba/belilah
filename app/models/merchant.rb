class Merchant < ApplicationRecord
  mount_uploader :image_url, ImageUploader
  belongs_to :products
end
