begin
	file = "test2.txt"
	
	File.open(file,'r'){|f| while line = f.gets;puts line;end}

rescue Exception => bang
	puts "here" + bang.to_s
end
