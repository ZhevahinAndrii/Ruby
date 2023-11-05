def create_matrix(n)
    matrix = Array.new(n) { Array.new(n) }
  
    n.times do |i|
      n.times do |j|
        if i == j
          matrix[i][j] = 1
        else
          matrix[i][j] = rand(10)
        end
      end
    end
  
    return matrix
  end

def print_matrix(matrix)
    matrix.each{|row| puts row.join("\t")}

end

n=8

b_matrix = create_matrix(n)
k=5

result1=b_matrix.map{|row| row.map{|elem| elem*k}}
puts "Result 1:"
print_matrix(result1)

a_matrix = create_matrix(n)

result2 = Array.new(n){Array.new(n){0}}
n.times {|i| n.times {|j| result2[i][j]=a_matrix[i][j]+b_matrix[i][j]}}

puts "Result2:"
print_matrix(result2)

result3=a_matrix.transpose
puts "Result3:"
print_matrix(result3)

result4=Array.new(n){Array.new(n){0}}

n.times do |i|
    n.times do |j|
        result4[i][j]=0
        n.times {|k| result4[i][j]+=a_matrix[i][k]*b_matrix[k][j]}
    end
end

puts "Result4:"
print_matrix(result4)

result5 = b_matrix.each_with_index.map{|row,i| row[i]}.sum

puts "Result5:#{result5}"

x_vector = Array.new(n){rand(10)}
y_vector = Array.new(n){rand(10)}
result6 = x_vector.zip(y_vector).map{|x,y| x*y}.sum
puts "Result6:#{result6}"
# result7 = x_vector.product(y_vector).map{|x,y| x-y}
# puts "Result7:#{result7}"

result8 = Math.sqrt(x_vector.map{|x|x**2}.sum)
puts "Result8:#{result8}"

result9=Array.new(n){0}

n.times do |i|
    result9[i]=x_vector.zip(a_matrix.map{|row| row[i]}).map{|x,a| x*a}.sum
end
puts "Result9:#{result9}"

result10 = Array.new(n){0}

n.times do |i|
    result10[i] = y_vector.zip(b_matrix[i]).map{|y,b|y*b}.sum
end

puts "Result10:#{result10}"