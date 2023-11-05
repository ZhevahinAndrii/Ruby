def calculate(x, n)
    e = 0.0001
    ln_restriction = 17
    rn_restriction = 58
    lx_restriction = 0.1
    rx_restriction = 0.8
    if x > lx_restriction && x < rx_restriction
    sum = 0
    if n >= ln_restriction && n <= rn_restriction
      (0..n).each do |i|
        sum += yield(x, i)
      end
    else
  
      fault = e + 1
      temp = sum
      i = 0
      while i < 100 || fault > e
        sum += yield(x, i)
        i += 1
        fault = (temp - sum).abs
        temp = sum
      end
      end
    end
    puts sum
  end
  
  def series(x, i)
    return x**(4*i+1)/(4*i+1)
  end
  
  
  
  calculate(0.65, 500) {|x, i| series(x, i)}
  