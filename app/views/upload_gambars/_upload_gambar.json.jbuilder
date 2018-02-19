json.extract! upload_gambar, :id, :title, :image_url, :created_at, :updated_at
json.url upload_gambar_url(upload_gambar, format: :json)
