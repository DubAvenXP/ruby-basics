# require Dir.pwd + '/15-file-input-and-output/05_end.rb'
# require File.join(Dir.pwd, '15-file-input-and-output', '05_end.rb')

# require_relative is used to load a file relative to the current file
require_relative '05_end'
require_relative './../helpers/calculator'

puts add(1, 2)
