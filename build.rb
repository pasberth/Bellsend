#!/usr/bin/env ruby

require 'erb'
body = File.read(ARGV.shift)
erb = ERB.new(File.read("source/template.rst.erb"))
erb.run(binding)
