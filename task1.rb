ARGV[0]

str = ARGV.join

if str.ascii_only? != true
  exit
end

if ARGV.size >= 1 && ARGV.size <= 10000
  original_string = ARGV.join
  string = original_string.downcase.tr("- \n\t!,.?-_", '')
  reverse_string = string.reverse

  if string == reverse_string
    puts "Yes"
  else
    puts "No"
  end
end
