class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.float :cost

      t.timestamps
    end
  end
end
