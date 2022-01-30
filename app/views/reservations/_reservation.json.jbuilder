json.extract! reservation, :id, :uid, :user_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
