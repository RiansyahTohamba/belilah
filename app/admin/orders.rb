ActiveAdmin.register Order,namespace: :customers do
  # scope_to :current_user
  permit_params :name, :address, :email, :status
  actions :index, :edit, :destroy, :show

  # nanti user mengkonfirmasi dulu kalau barang siap dikirim
# line_items discope sesuai produk miliknya user,
# line item dihitung per satu-satu row
  controller do
      def scoped_collection
        # semua order intuk product_id: 38
        # User.find(current_user.id).products.find(38).orders
        User.find(1).products.joins(:orders).select("order_id, product_id").where("orders.status = 1")
        # kalau semua produk gimana caranya?
      end
  end
  # index do
  #   id_column
  #   column "Buyer" do |order|
  #     order.name
  #   end
  #   column :address
  #   column "Product" do |order|
  #     attributes_table_for order.line_items do
  #       row :product_id
  #     end
  #   end
  #
  #   actions
  # end

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
