class Hash
    def identify_duplicate_values
        values = []
        dupes = []
        each_value do |value|
            values.include?(value) ? dupes << value : values << value
        end
        dupes.uniq
    end
end

my_hash = {
    a: 1,
    b: 2,
    c: 3,
    d: 3,
    e: 1,
    f: 1
}

p my_hash.identify_duplicate_values # => [1, 3]

class Integer
    def to_seconds
        self
    end

    def to_minutes
        self * 60
    end

    def to_hours
        self * 60 * 60
    end

    def days
        self * 60 * 60 * 24
    end

    def custom_times
        i = 0
        while i < self
            yield(i)
            i += 1
        end
        self
    end
end

p(5.custom_times { |i| puts "Iteration #{i}" })
p(10.to_minutes)
p(10.to_minutes + 20.to_seconds)
p(60.to_minutes)
