class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :cals
      t.integer :sugar
      t.string :quantity
      t.belongs_to :meal, foreign_key: true

      t.timestamps
    end
  end
end
