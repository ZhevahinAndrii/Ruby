require 'matrix'


def input_dimension
  while true
    print "Input the size of system(3-9): "
    n = gets.chomp.to_i
    return n if (3..9).include?(n)
    puts "Invalid size of system.Try again..."
  end
end


def create_matrix(n)
  a = Array.new(n) { Array.new(n, 11) }
  for i in 0...n
    a[i][i] = 2
  end
  return Matrix[*a]
end


def create_vector_b(n)
  Vector.elements((1..n).to_a)
end

def gauss_elimination(a, b)
  n = a.row_size
  x = Array.new(n, 0)

  for k in 0...n
    for i in (k + 1)...n
      factor = a[i, k].to_f / a[k, k].to_f
      b[i] -= factor * b[k].to_f
      for j in k...n
        a[i, j] -= factor * a[k, j].to_f
      end
    end
  end

  for k in (n - 1).downto(0)
    x[k] = (b[k] - (a.row(k).to_a[k + 1..-1].zip(x[k + 1..-1]).map { |ai, xi| ai * xi }).sum) / a[k, k]
  end

  Vector.elements(x)
end


n = input_dimension
a = create_matrix(n)
b = create_vector_b(n)

puts "Matrix A:"
puts a
puts "Vector b:"
puts b

x = gauss_elimination(a, b)

puts "x:"
puts x
