ActiveAdmin.register Order,namespace: :customers do
  permit_params :name, :address, :status
  actions :index, :edit, :destroy, :show

  controller do
    def scoped_collection
       Order.new.recent(current_user.id)
    end
    def resource
       Order.new.detail_for_admin(current_user.id,params[:id])
    end
  end
  index do
    id_column
    column :buyer
    column :address
    column :created_at
    actions
  end
  show do
    attributes_table do
      row :buyer
      row :product_name
      # row "Product" do |p|
      #   table_for
      # end
    end
  end
end

ActiveAdmin.register Order,namespace: :admin do
  permit_params :name, :address, :email, :status
  index do
    id_column
    column "Buyer" do |order|
      order.name
    end
    column :address
    column "Product" do |order|
      attributes_table_for order.line_items do
        row :product_id
      end
    end
    column :status
    actions
  end
end
