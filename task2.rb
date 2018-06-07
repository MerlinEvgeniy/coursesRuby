f0 = 0
f1 = 1
f2 = 1

ARGV[0]

int = ARGV.join
int = int.to_i

if int == 0
  puts 0
elsif int == 1 || int == -1
  puts 1
end

if int < 0 && int >= -10000
  int = int * -1
  while f2 < int
    fib_sum = f0 - f1
    f0 = f1
    f1 = fib_sum
    f2 += 1
  end
elsif int > 0 && int <= 10000
  while f2 < int
    fib_sum = f0 + f1
    f0 = f1
    f1 = fib_sum
    f2 += 1
  end
end

puts fib_sum
