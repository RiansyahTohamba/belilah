ActiveAdmin.register Product,namespace: :merchant do
  permit_params :title, :price, :description, :image_url
end
