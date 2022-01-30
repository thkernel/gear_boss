json.extract! rental_item, :id, :uid, :rental_id, :created_at, :updated_at
json.url rental_item_url(rental_item, format: :json)
