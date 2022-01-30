json.extract! gear, :id, :uid, :slug, :gear_type_id, :brand, :model, :manufacture_year, :name, :description, :status, :user_id, :created_at, :updated_at
json.url gear_url(gear, format: :json)
