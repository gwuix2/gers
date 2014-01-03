json.array!(@child_pages) do |child_page|
  json.extract! child_page, :id, :title, :body, :parent_page_id
  json.url child_page_url(child_page, format: :json)
end
