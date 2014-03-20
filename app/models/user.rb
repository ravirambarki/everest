class User < ActiveRecord::Base
  has_many :detail_transactions, :foreign_key => "dealership_code"
  
  validates :dealership_code,           :presence => true
  validates :dealership_name,           :presence => true
  validates :contact_person,            :presence => true
  validates :contact,                   :presence => true

   
  def to_param
    "#{dealership_code}"
  end
   
end
