json.array!(@galleries) do |gallery|
  json.extract! gallery, :id, :name, :body
  json.url gallery_url(gallery, format: :json)
end
