require './q7_titilize.rb'

module Blog
  class Article
    include HelperMethods

    attr_accessor :body

    def initialize(title, body)
      @title, @body = title, body
    end

    def title
      titilize(@title)
    end
  end

  class Snippet < Article

    def initialize(title, body)
      super
      if @body.length > 100
        @body = @body[0...100] + '...'
      end
    end
  end
end

include Blog

# Tests
puts "\nArticle test"
a = Article.new("amazing new discovery", ("a" * 200) )
puts a.title
puts a.body

puts "Snippet test"
s = Snippet.new("amazing new discovery", ("a" * 200) )
puts s.title
puts s.body
