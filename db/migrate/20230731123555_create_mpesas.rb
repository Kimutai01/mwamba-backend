class CreateMpesas < ActiveRecord::Migration[7.0]
  def change
    create_table :mpesas do |t|
      t.string :Message
      t.string :Success
      t.integer :Status
      t.integer :Amount
      t.string :transaction_code
      t.string :transaction_reference

      t.timestamps
    end
  end
end
