json.extract! listing, :id, :title, :description, :bounty, :completed, :created_at, :updated_at
json.url listing_url(listing, format: :json)
