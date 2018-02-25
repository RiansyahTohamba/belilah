ActiveAdmin.register Order,namespace: :customers do
  permit_params :name, :address, :email, :status
  actions :index, :edit, :destroy, :show

  controller do
    def scoped_collection
      User.find(current_user.id).line_items.joins(:order)
          .select("order_id as id,orders.name as buyer, orders.address,orders.created_at")
          .where("orders.status = 1").group("order_id")
    end
  end
  index do
    id_column
    column :buyer
    column :address
    column :created_at
    actions
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
