# typed: true
def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def multiply(num1, num2)
    num1 * num2
end

def divide(num1, num2)
    num1 / num2
end

def calculator(num1, num2, operation = 'add')
    case operation
    when 'add'
        "The result of adding is #{add(num1, num2)}"
    when 'subtract'
        "The result of subtracting is #{subtract(num1, num2)}"
    when 'multiply'
        "The result of multiplying is #{multiply(num1, num2)}"
    when 'divide'
        "The result of dividing is #{divide(num1, num2)}"
    else
        'Invalid operation'
    end
end

p calculator(2, 3)
p calculator(2, 3, 'subtract')
p calculator(2, 3, 'multiply')
p calculator(2.0, 3, 'divide')
