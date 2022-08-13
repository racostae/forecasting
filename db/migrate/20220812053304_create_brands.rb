class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :lead_time

      t.timestamps
    end
  end
end
