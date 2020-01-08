json.extract! product, :id, :name, :description, :area_id, :company_id, :industry_id, :state, :open_date, :close_date, :created_at, :updated_at
json.url product_url(product, format: :json)
