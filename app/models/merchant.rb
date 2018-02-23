class Merchant < ApplicationRecord
  mount_uploader :image_url, ImageUploader
  has_one :user
  has_many :products
end
