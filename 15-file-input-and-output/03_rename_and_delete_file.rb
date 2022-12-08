# File.rename(
#     File.join(File.dirname(__FILE__), 'my-first-file.txt'),
#     File.join(File.dirname(__FILE__), 'my-first-file-renamed.txt')
# )

if File.exist?(File.join(File.dirname(__FILE__), 'my-first-file-renamed.txt'))
    File.delete(File.join(File.dirname(__FILE__), 'my-first-file-renamed.txt'))
end
