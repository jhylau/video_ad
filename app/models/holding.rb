class Holding < ActiveRecord::Base
has_many :transactions
  has_many :users, through: :transactions

  def self.by_user(current_user)
    joins(:transactions).where("transactions.user_id = #{current_user.id}",)
  end
end
