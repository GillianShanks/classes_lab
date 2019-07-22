class Library
  def initialize(books)
    @books = books #array of books
  end

  def books()
    return @books
  end

  #takes in string
  #for hash in array, return hash if
  def get_book_info(book_name)
    for book in @books
      return book if book[:title] == book_name
    end
  end

  def book_rental_info(book_name)
    return get_book_info(book_name)[:rental_details]
  end

end
