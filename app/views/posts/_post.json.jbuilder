json.extract! post, :id, :headline, :sub_headline, :created_at, :updated_at
json.url post_url(post, format: :json)
