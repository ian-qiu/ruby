#Block只是在花括号或者do..end之间的一组代码
#代码快是没有名字的函数
=begin
约定：单行block用{},多行block用do..end
{puts "Hello"} #this is a block

#this is also a block
do				
	puts "Hello"
end
=end

def call_block
	puts "start"
	yield("first")
	yield("second")
	puts "end"
end

call_block {|name|puts "#{name} call block"}

animals = %w(tiger fragon)

animals.each {|ele|puts ele}

3.upto(6){|i|puts i}
3.upto(6){|i|print i}

(1..20).each{|i| puts i}
('a'..'z').each{|i| puts i}
