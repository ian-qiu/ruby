def test1(global = false,case_sensitive = true)
	while line = gets
		if case_sensitive
		pattern = /python|perl|php|scala/
		else
		pattern = /python|perl|php|scala/i
		end
		if line =~ pattern
			if global
			puts line.gsub(pattern,'Perl')
			else
			puts line.sub(pattern,'Perl')
			end
		end
	end
end
test1(true,false)
