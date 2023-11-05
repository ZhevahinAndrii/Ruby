array_A = Array.new(15){rand(-10..10)}

indexes_zero = []
indexes_negative = []
indexes_positive = []

array_A.each_with_index do |element,index|
    case element <=> 0 
    when 0
        indexes_zero<<index
    when -1
        indexes_negative<<index
    when 1
        indexes_positive<<index
    end
end

array_C = indexes_zero+indexes_negative+indexes_positive

puts "Array A:#{array_A}"

puts "Array C:#{array_C}"