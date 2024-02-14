class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.text :dish_name
      t.string :image_id
      t.text :material
      t.text :process
      t.string :user_id

      t.timestamps
    end
  end
end
