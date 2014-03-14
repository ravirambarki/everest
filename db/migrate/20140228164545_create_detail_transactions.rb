class CreateDetailTransactions < ActiveRecord::Migration
  def change
    create_table :detail_transactions do |t|
      t.integer :transaction_no
      t.string :dealership_code
      t.string :sku
      t.integer :openingStock
      t.integer :purchaseWeekStock
      t.integer :salesWeekStock
      t.integer :estimatedSelling
      t.integer :breakage
      t.datetime :submission_date

      t.timestamps
    end
  end
end
