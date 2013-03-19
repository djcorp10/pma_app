class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :email
      t.integer :phone
      t.date :date

      t.timestamps
    end
  end
end
