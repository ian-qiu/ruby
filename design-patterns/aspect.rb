#!/usr/bin/env ruby
require 'aspectr'

class MyExampleClass
    def do_something
        #puts "do something"
        return "yes"
    end 
end

class MyLogger < AspectR::Aspect
    def myenter(method, object,exitstatus,*args)
        puts "myenter"
    end 

    def myexit(method, object, exitstatus, *args)
        puts "myexit"
    end 
end

mylogger = MyLogger.new
e = MyExampleClass.new
mylogger.wrap(e, :myenter, :myexit, :do_something)
#mylogger.wrap(MyExampleClass, nil, :myexit, :do_something)
#mylogger.wrap_with_code(MyExampleClass, 'puts "myenter"','puts "myexit"', :do_something)
e.do_something
