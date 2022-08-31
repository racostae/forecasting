class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :brand, null: false, foreign_key: true
      t.string :name
      t.string :sku
      t.integer :average_sale
      t.integer :inventory

      t.timestamps
    end
  end
end
