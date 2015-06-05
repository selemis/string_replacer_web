json.array!(@values) do |value|
  json.extract! value, :id, :label, :content
  json.url value_url(value, format: :json)
end
