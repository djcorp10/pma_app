class AddQtyToItems < ActiveRecord::Migration
  def change
    add_column :items, :qty, :integer, :default => 0
  end
end
