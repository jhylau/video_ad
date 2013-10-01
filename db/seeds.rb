# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  User.create(username: 'Dave Poirier', email: 'davepoirier1@gmail.com', cash_balance:'10000000',
              password:'12345678')
  User.create(username: 'Jonathan Lau', email: 'jhylau1@gmail.com', cash_balance:'12',
              password:'12345678')
Holding.create(avg_buy_price:1.00,avg_sell_price:213.43,quantity:1000,ticker:'KO')
Holding.create(avg_buy_price:4.20,avg_sell_price:83.35,quantity:602,ticker:'WMT')
Transaction.create(user_id:1, holding_id:1, open_at: '2012-09-09', open_price:7.00)
Transaction.create(user_id:2, holding_id:2, open_at: '2012-09-09', open_price:79.00)

