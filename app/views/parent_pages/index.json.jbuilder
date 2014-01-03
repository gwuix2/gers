json.array!(@parent_pages) do |parent_page|
  json.extract! parent_page, :id, :title
  json.url parent_page_url(parent_page, format: :json)
end
