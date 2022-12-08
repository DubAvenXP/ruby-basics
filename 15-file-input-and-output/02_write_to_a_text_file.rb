File.open(File.join(File.dirname(__FILE__), 'text.txt'), 'w') { |file| file.write('Hello World!') }

File.open(File.join(File.dirname(__FILE__), 'my-first-file.txt'), 'w') do |file|
    file.write('Hello World!')
end

File.open(File.join(File.dirname(__FILE__), 'my-second-file.txt'), 'w') do |file|
    file.puts 'And one more line with file.puts'
    file.print 'And one more line with file.print'
    file.write 'And one more line with file.write'
    file.write ''
    file.puts '\nAppend file.puts'
end
