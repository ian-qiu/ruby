class Button
	attr_accessor :name
	def initialize(name)
		@name = name
	end
	
	def click(&block)
		block.call
	end
end

b = Button.new("测试")
puts b.name

b.click() {puts "abcd"}
