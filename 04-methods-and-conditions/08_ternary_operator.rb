# ternary operator

is_nice = true

show_message = is_nice ? 'You are nice' : 'You are not nice'

def even_or_odd(number)
    number.even? ? 'even' : 'odd'
end

p show_message
p even_or_odd(10)
