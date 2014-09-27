json.array!(@volunteers) do |volunteer|
  json.extract! volunteer, :id, :name, :bday, :approved?, :leader?, :admin?, :email
  json.url volunteer_url(volunteer, format: :json)
end
