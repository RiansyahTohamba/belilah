class Purchase < ApplicationRecord
  belongs_to :order
  belongs_to :user
  def detail_for_buyer(user_id,order_id)
    # User.find(user_id).purchase.find().joins(:line_items)
    #         .select("*")
    #         .where("orders.id = #{order_id}")
  end
end
