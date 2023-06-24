class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.string :name
      t.string :size
      t.string :category
      t.integer :quantity , default: 1
      t.integer :price
      t.string :picture
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
