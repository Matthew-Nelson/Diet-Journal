class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :weight, :integer
    add_column :users, :trgwt, :integer
    add_column :users, :height, :integer
  end
end
