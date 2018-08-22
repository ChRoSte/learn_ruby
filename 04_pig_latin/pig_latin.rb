#write your code here

def translate(str)
    original = str.split(" ")
    translated = ""
    
    original.each { |word|
        if word.start_with?("a","e","i","o","u")
            if translated === ""
                translated += "#{word}ay"
            else
                translated += " #{word}ay"
            end
        else
            original_word = word
            first_letter = ""
            
            i = true
            while i
                original_letters = original_word.split("")
                if original_word.start_with?("a","e","i","o","u")
                    i = false
                elsif original_letters[0] === "q" &&
                      original_letters[1] === "u"
                    first_letter += original_word[0,2]
                    original_word = original_letters.drop(2).join
                else
                    first_letter += original_letters[0]
                    original_word = original_letters.drop(1).join
                end
            end
            
            if translated === ""
                translated += "#{original_word}#{first_letter}ay"
            else
                translated += " #{original_word}#{first_letter}ay"
            end 
            
        end
    }
    
    translated
    
end