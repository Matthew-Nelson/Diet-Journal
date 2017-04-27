class AddColumnsToFood < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :protein, :integer
    add_column :foods, :carb, :integer
    add_column :foods, :fat, :integer
  end
end
