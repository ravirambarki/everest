json.array!(@coredealers) do |coredealer|
  json.extract! coredealer, :id, :MEMBERSHIP_NO, :AGENCY_NAME, :Total, :Average_value, :Tonnage_Per_Month, :Email_ID, :Mobile_Number, :Contact_Person, :Communication_Address, :Zone, :STATE, :Sales_District_no, :Sales_District_Description
  json.url coredealer_url(coredealer, format: :json)
end
