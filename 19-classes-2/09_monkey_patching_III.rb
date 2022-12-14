class Book
    def initialize(title, author, pages)
        @title = title
        @author = author
        @pages = pages
    end
end

good_book = Book.new('Harry Potter', 'JK Rowling', 400)
p good_book

class Book
    def read
        1.step(@pages, 10) { |page| puts "Reading page #{page}..." }
        puts "Done! #{@title} was a great book!"
    end
end

good_book.read
