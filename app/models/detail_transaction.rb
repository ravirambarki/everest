class DetailTransaction < ActiveRecord::Base
  belongs_to :user, :foreign_key => "dealership_code"
  
  validates :name,                  :presence => true
end
