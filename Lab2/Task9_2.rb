P=2
T=64
R=16

range = P**R*(1-(P**(-T))).ceil

puts "Range is #{range}"