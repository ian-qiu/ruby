#!/usr/local/bin/ruby
str = "abc\n"

p str 

str.chop #str not changed

p str 

str.chop!#modify str itself

p str 
