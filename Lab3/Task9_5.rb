def first
    puts "Input n:"
    n=gets.chomp.to_f

    puts "Input c:"
    c=gets.chomp.to_f
    num_intervals = n+c
    start = 1
    step = (n-1)/num_intervals

    puts "x\t\ty"

    (1..n).step(step) do |x|
        y = (x-c)/(x**0.75+x**(1.0/n)*c**0.25)*(x**0.5*c**0.25+n**0.25)/(x**0.5+c**0.5)*(x**0.25*c**(-0.25))/(x**0.5-(2*x**0.25*c**0.25)+c**(1/n))
        puts "#{x}\t\t#{y}"
    end
end

def second
    puts "Input n:"
    n=gets.chomp.to_f
    puts "Input c:"
    c=gets.chomp.to_f

    num_intervals = (3.0/2)*n+c

    puts "x\t\tz"
    step = (Math::PI-Math::PI/n)/num_intervals
    x=Math::PI/n
    while x<=Math::PI
        z=(Math.sin(2*x))**2 - Math.cos(Math::PI/3-2*x)*Math.sin(2*x-Math::PI/6)-(1/Math.tan((Math::PI+x)/(x+1)))**2/x
        puts "#{x}\t\t#{z}"
        x+=step
    end
end
def third
    puts "Input N:"
    n = gets.chomp.to_f
    puts "Input c:"
    c=gets.chomp.to_f
    num_intervals = (2 * n).to_f
    step = ((c-2)/num_intervals).to_f
    puts "x\t\ty\t\tz\t\tf"
    x = 2.0
    while x <= c
        if x > 2 && x < n
            y = (x-c)/(x**0.75+x**(1.0/n)*c**0.25)*(x**0.5*c**0.25+n**0.25)/(x**0.5+c**0.5)*(x**0.25*c**(-0.25))/(x**0.5-(2*x**0.25*c**0.25)+c**(1/n)) 
            z = (Math.sin(2*x))**2 - Math.cos(Math::PI/3-2*x)*Math.sin(2*x-Math::PI/6)-(1/Math.tan((Math::PI+x)/(x+1)))**2/x 
            f = y
        elsif x >= n && x < 2 * n
            y = (x-c)/(x**0.75+x**(1.0/n)*c**0.25)*(x**0.5*c**0.25+n**0.25)/(x**0.5+c**0.5)*(x**0.25*c**(-0.25))/(x**0.5-(2*x**0.25*c**0.25)+c**(1/n))  
            z = (Math.sin(2*x))**2 - Math.cos(Math::PI/3-2*x)*Math.sin(2*x-Math::PI/6)-(1/Math.tan((Math::PI+x)/(x+1)))**2/x 
            f = z
        else
            y = 0
            z = 0
            f = 0
        end
        puts "#{x}\t\t#{y}\t\t#{z}\t\t#{f}"
        x += step
    end
end
first()
second()
third()