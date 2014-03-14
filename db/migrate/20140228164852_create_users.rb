class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :dealership_code
      t.string :dealership_name
      t.string :contact_person
      t.string :address
      t.string :city
      t.string :contact
      t.boolean :weekly_submission

      t.timestamps
    end
  end
end
