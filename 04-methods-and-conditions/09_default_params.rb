# typed: true
def make_phone_call(number, international_code = 1, area_code = 646)
    puts "Calling #{international_code}-#{area_code}-#{number}"
end

make_phone_call(1_234_567)
make_phone_call(1_234_567, 502)
