json.array!(@templates) do |template|
  json.extract! template, :id, :label, :content
  json.url template_url(template, format: :json)
end
