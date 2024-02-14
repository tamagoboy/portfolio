class ChangeColumnTypeOfDishes < ActiveRecord::Migration[5.2]
  def change
    change_column :dishes, :id, :integer
  end
end
