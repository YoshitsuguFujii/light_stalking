json.array!(@posts) do |post|
  json.extract! post, :title, :context
  json.url post_url(post, format: :json)
end
