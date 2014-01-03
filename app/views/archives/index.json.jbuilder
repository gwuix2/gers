json.array!(@archives) do |archive|
  json.extract! archive, :id, :title, :body, :img
  json.url archive_url(archive, format: :json)
end
