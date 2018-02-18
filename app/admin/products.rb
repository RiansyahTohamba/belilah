ActiveAdmin.register Product,namespace: :user_belilah do
  permit_params :title, :price, :description, :image_url
end
