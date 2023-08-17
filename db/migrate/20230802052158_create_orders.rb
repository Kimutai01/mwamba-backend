class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :product 
      t.string :quantity
      t.string :total_price
      t.string :phone_number
      t.string :status  , default: "pending"
      t.string :customer_name
      t.string :customer_email
      t.string :customer_location
      t.string :category
      t.string :size 

      t.timestamps
    end
  end
end
