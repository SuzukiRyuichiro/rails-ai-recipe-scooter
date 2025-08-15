json.extract! reccipe, :id, :name, :ingredients, :content, :created_at, :updated_at
json.url reccipe_url(reccipe, format: :json)
