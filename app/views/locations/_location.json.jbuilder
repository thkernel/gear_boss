json.extract! location, :id, :uid, :slug, :name, :description, :status, :user_id, :created_at, :updated_at
json.url location_url(location, format: :json)
