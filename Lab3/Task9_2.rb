require 'cmath'

puts "Input x:"
x=gets.chomp.to_f
y = case 
when x>-4&&x<=0
    (((x-2).abs)/(x**2*Math.cos(x)))**(1/7.0)
when x>0&&x<=12
    1/(Math.tan(x+1/(Math::E)**x)/(Math.sin(x)**2))**(2/7.0)
when x<-4||x>12
    1/(1+x/(1+x/(1+x)))
end

puts "y=#{y}"
