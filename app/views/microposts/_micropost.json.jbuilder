json.extract! micropost, :id, :context, :user2_id, :created_at, :updated_at
json.url micropost_url(micropost, format: :json)
