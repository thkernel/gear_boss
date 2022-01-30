json.extract! reservation_item, :id, :uid, :reservation_id, :created_at, :updated_at
json.url reservation_item_url(reservation_item, format: :json)
