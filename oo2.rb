class Test
	
	#include Comparable
	attr_accessor :name	

	def initialize(name)
		@name = name
	end

	def <=> (t)
		return self.name <=> t.name
	end
end


t1 = Test.new("abcd")
t2 = Test.new("efgh")

puts t1 <=> t2

arr = [t1,t2]
puts arr.max.name
puts $:
