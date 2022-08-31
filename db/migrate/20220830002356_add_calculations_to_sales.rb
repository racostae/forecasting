class AddCalculationsToSales < ActiveRecord::Migration[7.0]
  def change
    add_column :sales, :error, :integer
    add_column :sales, :compliance, :float
    add_column :sales, :weighted, :float
    add_column :sales, :plan_error, :float
  end
end
