class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :seller, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :plan
      t.integer :real
      t.date :date

      t.timestamps
    end
  end
end
