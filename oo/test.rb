#!/usr/local/bin/ruby
module MyModule
    def mth 
        p 'MyModule.mth'
    end 
end

class MyClass
    include MyModule
    def mth1
        p 'MyClass.mth1'
    end 
    def mth 
        p 'MyClass.mth'
    end 
    # static method
    def MyClass.mth1
        h = {"a" => "b","c" => "d"}
        p 'MyClass::mth1'
        p h 
    end 
end

MyClass.mth1
