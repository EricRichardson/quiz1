class Book
  attr_accessor :title

  def initialize (title='', chapters=[])
    @title = title
    @chapters = chapters
  end

  def add_chapter(chapter)
    @chapters << chapter
  end

  def chapters
    puts "#{title} has #{@chapters.length} chapters. They are: "
    for i in 0...@chapters.length
      puts "#{i+1}. #{@chapters[i]}"
    end
  end
end

book = Book.new
book.title = "My Awesome Book"
book.add_chapter("My Awesome Chapter 1")
book.add_chapter("My Awesome Chapter 2")
book.chapters
