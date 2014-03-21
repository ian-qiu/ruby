#!/usr/bin/ruby -w
def test_global_var
	while gets
		puts $_
	end
end

def test_hash
	attrs = {
		'a' => "a",
		'b' => "b",
	}
	
	puts attrs
	puts attrs["a"]
	puts attrs["c"]
end
#test_global_var
#test_hash

class Test
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def tname
		name
	end
end

#t = Test.new("abcd")
#puts t.tname

#File.open("test.txt",'r'){|f| while line = f.gets;puts line;end}

a = "1"
b = "2"

puts Integer(a) + Integer(b)
