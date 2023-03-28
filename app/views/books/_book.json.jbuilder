json.extract! book, :id, :title, :image_url, :description, :admin_id, :created_at, :updated_at
json.url book_url(book, format: :json)
