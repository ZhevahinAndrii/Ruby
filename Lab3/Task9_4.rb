def factorial(n)
    n>1?n*factorial(n-1):1
end

def series_term(n)
    numerator = factorial(n-1)
    denominator = factorial(n+1)
    term = (numerator.to_f/denominator.to_f)**(n*(n-1.0))
    return term
end


def calculate_1
    sum = 0.0
    n=2
    loop do
        term  = series_term(n)
        sum+=term
        break if term<1e-5
        n+=1
    end
    return sum
end

def calculate_2(x,a)
    sum = 0.0
    e=1e-5
    n=0
    def series_term(a,x,n)
        numerator = (x*(Math.log(a).to_f))**(n.to_f)
        denominator = factorial(n)
        term = numerator.to_f/denominator.to_f
        return term
    end
    loop do
        term = series_term(a,x,n)
        sum+=term
        break if term<e
        n+=1
    end
    return sum
end

def calculate_3
    n=1
    sum = 0.0
    e=1e-5
    def series_term(n)
        numerator = factorial(3*n-1)*factorial(n+1)
        denominator = factorial(4*n)*factorial(2*n)
        term = numerator.to_f/denominator.to_f
        return term
    end
    loop do
        term = series_term(n)
        sum+=term
        break if term<e
        n+=1
    end
    return sum
end

puts "Result of first sequence is #{calculate_1()}"

puts "Input a:"
a=gets.chomp.to_f
puts "Input x:"
x = gets.chomp.to_f
puts "Result of second sequence is #{calculate_2(a,x)}"

puts "Result of third sequence is #{calculate_3()}"
  
