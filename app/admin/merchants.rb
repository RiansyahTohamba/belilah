ActiveAdmin.register Merchant,namespace: :customers do
  permit_params :name, :image_url, :address
  config.filters = false
  actions :edit, :index

  controller do
    def scoped_collection
      User.joins(:merchant)
          .select("merchants.id, merchants.name,address,merchants.image_url")
          .where("users.id = #{current_user.id}")
    end
  end

  index do
    column :name
    column :image_url
    column :address
    actions
  end
  # form(:html => { :multipart => true }) do |f|
  #   f.inputs "Product" do
  #     f.input :name
  #     f.input :image_url, :as => :file
  #     f.input :address
  #   end
  #   f.actions
  # end
end

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

