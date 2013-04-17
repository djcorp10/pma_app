class RemoveCategorieIdFromItem < ActiveRecord::Migration
  def up
  end

  def down
  	remove_column :item, :categorie_id
  end
end
