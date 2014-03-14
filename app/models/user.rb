class User < ActiveRecord::Base
  has_many :detail_transaction, :foreign_key => "dealership_code"
  def to_param
    "#{dealership_code}"
  end
   
end
