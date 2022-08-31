class AddMonthAndYearToSales < ActiveRecord::Migration[7.0]
  def change
    add_column :sales, :month, :integer
    add_column :sales, :year, :integer
  end
end
