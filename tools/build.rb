#!/usr/bin/env ruby

require 'yaml'
require 'erb'
require 'fileutils'

TEMPLATE = ERB.new(File.read("#{File.dirname(__FILE__)}/../source/template.rst.erb"))
PREFIX = ARGV.shift
SRCDIR = ARGV.shift || 'source'
OUTDIR = ARGV.shift || 'novel'
NOVCFG = YAML.load(File.read(File.join(SRCDIR, PREFIX, "config.yml")))

FileUtils.mkdir_p OUTDIR

(NOVCFG["novel-list"] + [nil]).each_cons(2).with_index do |(nov, nxt), i|
  nov = File.join PREFIX, nov
  nxt = File.join PREFIX, nxt if nxt
  scene = i.succ
  body = File.read(File.join(SRCDIR, nov))
  File.write(File.join(OUTDIR, nov), TEMPLATE.result(binding))
end
