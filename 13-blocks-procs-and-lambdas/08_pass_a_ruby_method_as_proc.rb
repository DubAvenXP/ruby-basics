# p(%w[1 2 3].map { |num| num.to_i })
p(%w[1 2 3].map(&:to_i))
p([1, 2, 3].map(&:to_s))

# select even numbers
p([1, 2, 3, 4, 5, 6].select(&:even?))
p([1, 2, 3, 4, 5, 6].reject(&:even?))
