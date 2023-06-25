class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :photo
      t.string :rotating_images , array: true, default: []

      t.timestamps
    end
  end
end
