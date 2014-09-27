json.array!(@events) do |event|
  json.extract! event, :id, :name, :location, :date, :num_volunteers_needed
  json.url event_url(event, format: :json)
end
