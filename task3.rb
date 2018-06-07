ARGV[0]

string = ARGV.join

if string.ascii_only? != true
  exit
end

string = string.tr('^A-Za-z0-9', '')

if ARGV.size >= 1 && ARGV.size <= 10000
  a = string.scan(/[a,A,e,E,i,I,o,O,u,U]/)
  b = string.scan(/[^a,A,e,E,i,I,o,O,u,U,0-9]/)
  c = string.scan(/[0-9]/)
  puts "#{a.join} #{b.join} #{c.join}"
end
