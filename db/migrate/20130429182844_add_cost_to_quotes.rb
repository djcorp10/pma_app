class AddCostToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :cost, :decimal, :default => 0.00
  end
end
