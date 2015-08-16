json.array!(@contexts) do |context|
  json.extract! context, :id, :situation
  json.url context_url(context, format: :json)
end
