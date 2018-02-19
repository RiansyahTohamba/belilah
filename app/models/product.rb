class Product < ApplicationRecord
  paginates_per 5
  mount_uploader :image_url, ImageUploader
end
