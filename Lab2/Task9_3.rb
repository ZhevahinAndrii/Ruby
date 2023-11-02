binary_number = "100011111001"
decimal_number = 0
position = 0

binary_number.reverse.each_char do |bit|
    if bit == '1'
      decimal_number += 2**position
    end
    position += 1
  end

puts "Binary number:#{binary_number}=decimal:#{decimal_number}"