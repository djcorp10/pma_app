class CreateRequestedItems < ActiveRecord::Migration
  def change
    create_table :requested_items do |t|
      t.integer :qty
      t.integer :item_id
      t.integer :quote_id

      t.timestamps
    end
  end
end
