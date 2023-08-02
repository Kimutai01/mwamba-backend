class CreateBookOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :book_orders do |t|
      t.string :product
      t.string :total_price
      t.string :phone_number
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
