class FixColName < ActiveRecord::Migration[5.0]
  def change
    rename_column :meals, :type, :meal_type
  end
end
