# def convert_to_euros(dollars)
#     dollars * 0.95 if dollars.is_a?(Numeric)
# end

# def convert_to_quetzales(dollars)
#     dollars * 7.88 if dollars.is_a?(Numeric)
# end

# def convert_to_yen(dollars)
#     dollars * 107.95 if dollars.is_a?(Numeric)
# end

to_euros = ->(dollars) { dollars * 0.95 }
to_quetzales = ->(dollars) { dollars * 7.88 }
to_yen = ->(dollars) { dollars * 107.95 }

def convert(dollars, currency_lambda)
    currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

p convert(1000, to_euros)
p convert(1000, to_quetzales)
p convert(1000, to_yen)

P [1000, 2000, 3000].map(&to_euros)
