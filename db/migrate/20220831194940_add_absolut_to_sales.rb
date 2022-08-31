class AddAbsolutToSales < ActiveRecord::Migration[7.0]
  def change
    add_column :sales, :absolut, :float
  end
end
