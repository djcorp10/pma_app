class AddDateToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :date, :date
  end
end
