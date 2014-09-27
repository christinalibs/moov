json.array!(@subgroups) do |subgroup|
  json.extract! subgroup, :id, :name
  json.url subgroup_url(subgroup, format: :json)
end
