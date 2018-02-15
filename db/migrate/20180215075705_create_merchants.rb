class CreateMerchants < ActiveRecord::Migration[5.1]
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.references :products, foreign_key: true

      t.timestamps
    end
  end
end
