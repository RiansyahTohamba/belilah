class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  belongs_to :purchase, optional: true
  validates :name, :address,  presence: true
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
  def total_price
    line_items.to_a.sum(&:total_price)
  end
  def recent(user_id)
    User.find(user_id).line_items.joins(:order)
        .select("order_id as id,orders.name as buyer, orders.address,orders.created_at")
        .where("orders.status = 1").group("order_id")
  end
  def detail_for_admin(user_id,order_id)
    # all result
    # User.find(user_id).orders.joins(:line_items).select("*").where("orders.id = #{order_id}").group("line_items.id")

    User.find(user_id).orders.joins(:line_items)
            .select("line_items.id as id,orders.name as buyer,
                orders.address,orders.updated_at,
                orders.created_at,
                products.title as product_name,products.price,line_items.quantity")
            .where("orders.id = #{order_id}")
            # .group("line_items.id")

  end
end
