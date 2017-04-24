class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :type
      t.integer :cals
      t.integer :sugar
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
