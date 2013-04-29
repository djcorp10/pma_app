class RemoveCostFromQuotes < ActiveRecord::Migration
  def up
    remove_column :quotes, :cost
      end

  def down
    add_column :quotes, :cost, :float
  end
end
