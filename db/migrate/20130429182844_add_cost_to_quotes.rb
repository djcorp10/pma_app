class AddCostToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :cost, :decimal
  end
end
