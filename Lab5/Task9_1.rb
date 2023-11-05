require 'cmath'

def prm(a,b,func,n)
    h = (b-a).to_f/n
    sum = 0.0
    n.times do |i|
        xi = (a+i*h-h/2).to_f
        sum+=func.call(xi)
    end

    result = h*sum

    return result
end

def trp(a,b,func,n)
    h = (b-a).to_f/n
    sum = 0.0
    n.times do |i|
        if i==0 || i==n
            sum+=func.call(a+i*h)/2
        else
            sum+=func.call(a+i*h)
        end
    end
    result = h*sum
    return result
end

f1 = lambda {|x| 1/(1+Math.sqrt(x))}
f2 = lambda {|x|1/(5-3*Math.cos(x))}

a1,b1 = 0.2,2.1
a2,b2 = 0.2,3.0/(2*Math::PI)

n=1000

integral_prm_f1 = prm(a1,b1,f1,n)
integral_trp_f1 = trp(a1,b1,f1,n)
integral_prm_f2 = prm(a2,b2,f2,n)
integral_trp_f2 = trp(a2,b2,f2,n)

puts "Integral f1 by rectangle method:#{integral_prm_f1}"
puts "Integral f1 by trapezoid method:#{integral_trp_f1}"

puts "Integral f2 by rectangle method:#{integral_prm_f2}"
puts "Integral f2 by trapezoid method:#{integral_trp_f2}"