class AddQuoteIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :quote_id, :integer
  end
end
