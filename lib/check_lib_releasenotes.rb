def check_required_line(dict, some_file)
  count_line = {true => 0, false => 0}
  File.open(some_file, 'r') do |file|
    file.each do |line|
      dict.each do |key|
       count_line[line.include?(key)] += 1 if line.include?(key)
      end
    end
  end
  check_line(count_line, some_file)
end

def check_line(line, some_file)
  if line[false] > 0
    puts "Check #{line}. line doesn't include required field"
  else
    puts "#{some_file} is correct"
  end
end