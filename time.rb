#!/usr/local/bin/ruby

# current unix timestamp
puts Time.now.to_i
# today
puts Time.now.strftime('%Y-%m-%d')
str_date = '2014-12-16'
unix_timestamp = Time::parse(str_date).to_i
puts unix_timestamp
str_date = Time.at(unix_timestamp).strftime('%Y-%m-%d')
puts str_date

require 'rails'
puts Time.now+3.days
