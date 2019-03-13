class AddColumnToCoins < ActiveRecord::Migration[5.1]
  def change
  	add_column :coins, :quantity, :integer
  end
end
