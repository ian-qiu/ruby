#!/usr/bin/env ruby
require 'observer'
require 'singleton'
class MomoFinance
	include Observable
	include Singleton
	def send_salary
		loop do
			changed
			notify_observers("100000")
			sleep(10)
		end
	end
end
class MomoEmployee
	def update(salary)
		printf "%s Momo pay you %s\n",Time.now.strftime("%Y-%m-%d %H:%M:%S"),salary
		STDOUT::flush
	end
end
f = MomoFinance.instance
me = MomoEmployee.new
f.add_observer(me)
f.send_salary
