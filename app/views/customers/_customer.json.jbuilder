json.extract! customer, :id, :uid, :customer_type, :company_name, :firt_name, :last_name, :civility, :address, :contry, :city, :locality, :phone, :email, :status, :description, :user_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
