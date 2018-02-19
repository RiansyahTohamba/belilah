class CreateUploadGambars < ActiveRecord::Migration[5.1]
  def change
    create_table :upload_gambars do |t|
      t.string :title
      t.string :image_url

      t.timestamps
    end
  end
end
