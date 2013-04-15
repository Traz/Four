json.array!(@wikis) do |wiki|
  json.extract! wiki, :name, :content, :owner_id, :author_id, :status
  json.url wiki_url(wiki, format: :json)
end