class AddColumnsToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :protein, :integer
    add_column :meals, :carb, :integer
    add_column :meals, :fat, :integer
  end
end
