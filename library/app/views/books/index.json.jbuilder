json.array!(@books) do |book|
  json.extract! book, :id, :isbn, :title, :author, :genre, :abstract, :pages, :image_cover_url, :published_on, :total_in_library
  json.url book_url(book, format: :json)
end
