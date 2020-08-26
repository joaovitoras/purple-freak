json.extract! lead, :id, :full_name, :signed_at, :email, :profession, :created_at, :updated_at
json.url lead_url(lead, format: :json)
