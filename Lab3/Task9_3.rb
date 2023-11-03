def calculate(x)
    result = 1.0
    n=10
    (1..n).each do |i|
        term =(i+1).to_f/(i+2).to_f*x**(i)
        if i%2==1
            result-=term
        else
            result+=term
        end
    end
    return result
end

def calculate_second
    res = 1.0
    (1..8).each do |i|
        res+=1.0/((3**i).to_f)
    end
    return res
end


puts "Input x:"
x=gets.chomp.to_f
first_result = calculate(x)
puts "First result is #{first_result}"

second_result = calculate_second()
puts "Second result is #{second_result}"