#each
[1,2,3].each{|i| puts i}
#collect
puts [1,2,3].collect{|i| i*i}
#hash
{"k_a" => "v_a","k_b" => "k_b"}.each{|i| puts i}
#inject

puts [1,2,3,4].inject{|a,b| a+b}
puts [1,2,3,4].inject{|a,b| a*b}
