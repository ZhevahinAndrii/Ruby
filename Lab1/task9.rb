require 'cmath'

print "Input x:"
x=gets.chomp.to_f
print "Input a:"
a=gets.chomp.to_f
print "Input fi:"
fi=gets.chomp.to_f
begin
    if (x-Math::PI)*Math.sin(5*x)==0
        raise ArgumentError,"Divider can not be equal to 0"
    end

    if a+fi<0
        raise ArgumentError,"Can't take a square root of negative number"
    end
    y=(4.1*10**(-1.7))/((x-Math::PI)*Math.sin(5*x))+((Math.tan((x).abs)**3)-Math.log10(Math.sqrt(a+fi)))/Math::E**Math::PI

    puts "Y=#{y}"
rescue ArgumentError=>e
    puts "Error:#{e.message}"
end