#!/usr/bin/env ruby

require("webrick");

include WEBrick

str = "<abcd>"
puts str
puts WEBrick::HTMLUtils.escape(str);
