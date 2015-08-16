json.array!(@targets) do |target|
  json.extract! target, :id, :person
  json.url target_url(target, format: :json)
end
