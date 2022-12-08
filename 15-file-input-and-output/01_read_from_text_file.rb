file = File.open(File.join(File.dirname(__FILE__), 'novel.txt'))

file.each do |line|
    puts line
end
