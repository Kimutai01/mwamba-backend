class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :price
      t.string :sizes , array: true, default: []
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
