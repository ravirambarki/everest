class CreateCoredealers < ActiveRecord::Migration
  def change
    create_table :coredealers do |t|
      t.integer :membership_no
      t.string :agency_name
      t.integer :total
      t.integer :average_value
      t.integer :tonnage_per_month
      t.string :email_id
      t.text :mobile_number
      t.string :contact_person
      t.string :communication_address
      t.string :zone
      t.string :state
      t.string :sales_district_no
      t.string :sales_district_description

      t.timestamps
    end
  end
end
