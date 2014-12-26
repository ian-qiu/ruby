#!/usr/local/bin/ruby
BEGIN{
    puts %x/date/
    puts "start"
}

puts "hello"

arr = %w{abc def}
puts arr.size

END{
    puts "end"
    puts %x{date}
}
