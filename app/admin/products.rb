ActiveAdmin.register Product,namespace: :user do
  # bagaimana caranya ambil sesi user via devise biasa
  # (bukan lewat sesi active admin),
  # lalu dari sesi user bisa masuk ke activeadmin merchant
  permit_params :title, :price, :description, :image_url
end
