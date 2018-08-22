#write your code here

def echo(str)
    str
end

def shout(original)
    original.upcase
end

def repeat(str, num = 2)
    strng = str
    
    while num > 1
        strng += " #{str}"
        num -= 1
    end
    
    strng
end

def start_of_word(str, num = 1)
    result = ""
    i = 0
    
    while i < num
        result += str[i]
        i += 1
    end
    
    result
end

def first_word(str)
    str.split(" ")[0]
end

def titleize(str)
    string = str.split(" ")
    result = ""
    
    if string.length === 1
        result = string.join.capitalize
    else
        string.each { |word|
            if result === ""
                result += "#{word.capitalize}"
            else
                if word === "and" || word === "over" ||
                        word === "the"
                    result += " #{word}"
                    
                else
                    result += " #{word.capitalize}"
                end
            end
        }
        
    end
        
    result
    
end

