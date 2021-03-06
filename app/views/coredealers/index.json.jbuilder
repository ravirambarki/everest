json.array!(@coredealers) do |coredealer|
  json.extract! coredealer, :id, :membership_no, :agency_name, :total, :average_value, :tonnage_per_month, :email_id, :mobile_number, :contact_person, :communication_address, :zone, :state, :sales_district_no, :sales_district_description
  json.url coredealer_url(coredealer, format: :json)
end
