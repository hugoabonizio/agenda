json.array!(@copypastes) do |copypaste|
  json.extract! copypaste, :id, :content
  json.url copypaste_url(copypaste, format: :json)
end
