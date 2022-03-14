json.extract! payment, :id, :quantity, :status, :created_at, :updated_at
json.url payment_url(payment, format: :json)
