class Purchase < ApplicationRecord
  belongs_to :order
  belongs_to :user
  def detail_for_buyer(user_id,purchase_id)
    User.find(user_id).purchases.joins(order: {line_items: :product})
      .select("orders.id, purchases.amount, products.title as product_name")
      .where("purchases.id = #{purchase_id}")

  end
end
