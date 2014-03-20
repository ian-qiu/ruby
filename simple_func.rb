def say_hi1(name)
	return "Hi," + name
end

def say_hi2(name)
	return "Hi,#{name}"
end

def say_hi3(name)
	return "Hi,#{name.capitalize}"
end
puts say_hi1("Ian");
puts say_hi2("Ian");
puts say_hi3("Ian");
=begin
全局变量以美元符号($)为前缀
实例变量以"at"（@）符号开始
类变量以两个"at"（@@）符号开始

类名称、模块名称、常量都必须以一个大写字母开始
=end

a1=[1,'abc',2.1]
a2=%w(1 'abc' 2.1)

puts a1[2]
puts a2[2]

def show_num(n)
	if n <= 10
		ret = 'n lte than 10'
	elsif n <= 100
		ret = 'n lte 100'
	elsif n <= 1000
		ret = 'n lte 1000'
	else
		ret = 'n gt 1000'
	end
	return ret
end

puts show_num(1000)


def read_file_test()
	while line = gets
		puts line
	end
end

#read_file_test()

def statement_modifiers_test(n)
	puts "#{n} is even" if n %2 == 0
	puts "#{n} is odd" if n %2 != 0
	square = 2
	square = square * square while square < 1000
	puts square
end
statement_modifiers_test(100)
