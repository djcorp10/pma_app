class AddCostToItems < ActiveRecord::Migration
  def change
    add_column :items, :cost, :decimal, :precision => 5, :scale => 2, :default => 0.00
  end
end
