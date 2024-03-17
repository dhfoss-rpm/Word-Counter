p "Hello World"

options = ARGV.select do |arg|
  arg.start_with?("-")
end

fileNames = ARGV.select do |arg|
  arg.end_with?(".txt")
end

option = options.first
fileName = nil

if fileNames.count == 0
  fileName = "test.txt"
else
  fileName = fileNames.first
end

p fileName

file = File.open(fileName)
file_data = file.read

def display_file_size(file)
  puts "file size: " + file.size.to_s
end

def display_number_of_lines(file_data)
  puts "number of lines: " + file_data.lines.count.to_s
end

def display_number_of_words(file_data)
  puts "number of words: " + file_data.split().count.to_s
end

def display_number_of_chars(file_data)
  puts "number of characters: " + file_data.length.to_s
end

case option
  when "-c"
    display_file_size(file)
  when "-l"
    display_number_of_lines(file_data)
  when "-w"
    display_number_of_words(file_data)
  when "-m"
    display_number_of_chars(file_data)
  else
    display_file_size(file)
    display_number_of_lines(file_data)
    display_number_of_words(file_data)
    display_number_of_chars(file_data)
end