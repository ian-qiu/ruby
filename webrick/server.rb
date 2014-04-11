#!/usr/bin/env ruby

require 'webrick'

include WEBrick

root = "/usr/share/nginx/www/"

server = WEBrick::HTTPServer.new :Port=>8000,:DocumentRoot => root

Signal.trap 'INT' do server.shutdown end

load "hello.rb"
server.mount("/hello",HelloServlet);

server.start
