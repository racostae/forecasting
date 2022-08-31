class RemoveDateFromSales < ActiveRecord::Migration[7.0]
  def change
    remove_column :sales, :date, :date
  end
end
