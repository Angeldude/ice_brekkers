json.array!(@quips) do |quip|
  json.extract! quip, :id, :tips, :context_id, :target_id
  json.url quip_url(quip, format: :json)
end
