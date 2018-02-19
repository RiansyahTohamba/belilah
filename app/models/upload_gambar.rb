class UploadGambar < ApplicationRecord
  mount_uploader :image_url, ImageUploader
end
