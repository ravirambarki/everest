class DetailTransaction < ActiveRecord::Base
  belongs_to :user, :foreign_key => "dealership_code"
  
  validates :sku,                   :presence => true
  validates :openingStock,          :presence => true
  validates :purchaseWeekStock,     :presence => true
  validates :salesWeekStock,        :presence => true
  validates :estimatedSelling,      :presence => true

end
