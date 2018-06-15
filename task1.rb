ARGV[0]

str = ARGV.join

if str.ascii_only? != true
  exit
end

if ARGV.size >= 1 && ARGV.size <= 10000
  original_string = ARGV.join
  string = original_string.downcase.scan(/[A-Za-z0-9]/)
  reverse_string = string.reverse

  if string == reverse_string
    puts "YES"
  else
    puts "NO"
  end
end
