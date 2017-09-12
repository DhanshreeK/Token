json.extract! book, :id, :name, :author_tokens, :created_at, :updated_at
json.url book_url(book, format: :json)
