json.array!(@settings) do |setting|
  json.extract! setting, :id, :set
  json.url setting_url(setting, format: :json)
end
