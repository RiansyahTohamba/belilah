ActiveAdmin.register Merchant,namespace: :admin do
  permit_params :name, :image_url, :address
  form(:html => { :multipart => true }) do |f|
    f.inputs "Product" do
      f.input :name
      f.input :image_url, :as => :file
      f.input :address
    end
    f.actions
  end
end

ActiveAdmin.register Merchant,namespace: :customers do
  permit_params :name, :image_url, :address
  config.filters = false
  actions :index, :edit

  # show do
  #   panel "Info" do
  #     para "Name"
  #     para "Image"
  #     para "Address"
  #   end
  # end
  # index do ; end
  # form(:html => { :multipart => true }) do |f|
  #   f.inputs "Product" do
  #     f.input :name
  #     f.input :image_url, :as => :file
  #     f.input :address
  #   end
  #   f.actions
  # end
end
