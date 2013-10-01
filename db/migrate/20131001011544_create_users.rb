class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.decimal :cash_balance

      t.timestamps
    end
  end
end
