json.extract! blog, :id, :content, :author, :created_at, :updated_at
json.url blog_url(blog, format: :json)