class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :coin_id
      t.integer :user_id
      t.boolean :deposited

      t.timestamps
    end
  end
end
