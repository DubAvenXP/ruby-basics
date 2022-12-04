# typed: true
def calculate_school_grade(grade)
    case grade
    when 0..5 # 0, 1, 2, 3, 4, 5
        'Elementary'
    when 6..8 # 6, 7, 8
        'Middle'
    when 9..12 # 9, 10, 11, 12
        'High'
    else
        'Invalid'
    end
end

p calculate_school_grade(4)
p calculate_school_grade(6)
p calculate_school_grade(9)
p calculate_school_grade(15)
