class CreateActAsShoppingCart < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.shopping_cart_item_fields # Creates the cart items fields
    end
  end
end
