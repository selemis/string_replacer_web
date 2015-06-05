json.array!(@replacements) do |replacement|
  json.extract! replacement, :id, :label, :template_id, :value_id
  json.url replacement_url(replacement, format: :json)
end
