class CreateCoredealers < ActiveRecord::Migration
  def change
    create_table :coredealers do |t|
      t.integer :MEMBERSHIP_NO
      t.string :AGENCY_NAME
      t.integer :Total
      t.integer :Average_value
      t.integer :Tonnage_Per_Month
      t.string :Email_ID
      t.text :Mobile_Number
      t.string :Contact_Person
      t.string :Communication_Address
      t.string :Zone
      t.string :STATE
      t.string :Sales_District_no
      t.string :Sales_District_Description

      t.timestamps
    end
  end
end
