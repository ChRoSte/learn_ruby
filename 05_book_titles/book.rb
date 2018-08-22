class Book
    attr_reader :title
    
    def title=(name)
        name_words = name.split(" ")
        name_words = [name_words[0].capitalize] + name_words[1..-1].map! { |word|  capitalize(word) }
        @title = name_words.join(" ")
    end
    
    def capitalize(word)
        if ["the", "a", "an", "and", "in", "of"].include? word
            word
        else
            word.capitalize
        end
    end
    
end

book = Book.new
book.title = "test title"
puts book.title