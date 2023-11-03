A=true
B=true
C=false
X=-20
Y=60
Z=4

result_a = !(A||B)&&(A&&!B)
# result_b = (Z!=Y) <=(6>=Y) && A||B&&C&&X>=1.5
result_c = (8-X*2<=Z)&&(X**2!=Y**2)||(Z>=15)
result_d = X>0 && Y<0 ||Z>=(X*Y+(-Y/X))+(-Z)
result_e = !(A||B&&!(C&&(!A&&B)))
result_f = (X**2+Y**2)>=(1||X>=0||Y>=0)
result_g=(A&&(C&&B!=B||A)||C)&&B

puts "Result of a:#{result_a}"
puts "Result of c:#{result_c}"
puts "Result of d:#{result_d}"
puts "Result of e:#{result_e}"
puts "Result of f:#{result_f}"
puts "Result of g:#{result_g}"

N=3
M=-6
P=false
Q=false

result = ((N/M+M/N)>3)&&(P&&Q||!P&&Q)
print "Result:#{result}"