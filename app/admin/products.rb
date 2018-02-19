ActiveAdmin.register Product,namespace: :customers do
  permit_params :title, :price, :description, :image_url
  form(:html => { :multipart => true }) do |f|
    f.inputs "Product" do
      f.input :title
      f.input :price
      f.input :image_url, :as => :file
      f.input :description
    end
    f.button "create"
  end
end
