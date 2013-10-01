class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.datetime :open_at
      t.decimal :open_price
      t.datetime :close_at
      t.decimal :close_price
      t.integer :user_id
      t.integer :holding_id

      t.timestamps
    end
  end
end
