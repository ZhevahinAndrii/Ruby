decimal_number = 444
def decimal_to_binary(decimal_number)
    binary_number = ""

    if decimal_number==0
        binary_number="0"
    else
        while decimal_number>0
            remainder = decimal_number%2
            binary_number =remainder.to_s+binary_number
            decimal_number/=2
        end
    end

    return binary_number
end

binary_number = decimal_to_binary(decimal_number)

puts "Decimal number:#{decimal_number} is equal to binary:#{binary_number}"