#write your code here

def ftoc(celsius_temp)
    (celsius_temp - 32) * 5/9
end

def ctof(fahr_temp)
    fahr_temp.to_f * 9/5 + 32
end

puts ctof(37)