#write your code here

def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(numbers)
    sum = 0
    
    if numbers.length === 0
        return 0
    end
    
    numbers.each { |num|
        sum += num
    }
    
    return sum
end

def multiply(*args)
    product = 1
    
    if args.length === 0
        return 0
    end
    
    args.each { |num|
        product *= num
    }
    
    product
end

def power(num1, num2)
    product = 1
    
    num2.times do
        product *= num1
    end
    
    product
end

def factorial(num)
    product = 1
    
    if num === 0
        return 1
    end
    
    num.times do
        if num > 0
            product *= num
            num -= 1
        end
    end
        
    return product
end




