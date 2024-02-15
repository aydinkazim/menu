class CreateMeals < ActiveRecord::Migration[7.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.text :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
