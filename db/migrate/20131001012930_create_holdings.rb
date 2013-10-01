class CreateHoldings < ActiveRecord::Migration
  def change
    create_table :holdings do |t|
      t.decimal :avg_buy_price
      t.decimal :avg_sell_price
      t.integer :quantity
      t.string :ticker

      t.timestamps
    end
  end
end
