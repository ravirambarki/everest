json.array!(@detail_transactions) do |detail_transaction|
  json.extract! detail_transaction, :id, :transaction_no, :dealership_code, :sku, :openingStock, :purchaseWeekStock, :salesWeekStock, :estimatedSelling, :breakage, :submission_date
  json.url detail_transaction_url(detail_transaction, format: :json)
end
