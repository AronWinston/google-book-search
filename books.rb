require "googlebooks"


books = GoogleBooks.search('all')

first_book = books.first

first_book.authors
first_book.isbn
first_book.image_link(:zoom => 6)
