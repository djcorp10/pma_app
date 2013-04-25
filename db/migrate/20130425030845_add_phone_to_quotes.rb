class AddPhoneToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :phone, :string
  end
end
