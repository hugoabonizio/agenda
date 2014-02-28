json.array!(@brainstorms) do |brainstorm|
  json.extract! brainstorm, :id, :idea, :annotations
  json.url brainstorm_url(brainstorm, format: :json)
end
