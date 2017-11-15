def check_version(some_file)
  File.open(some_file, 'r') do |file|
    file.each do |line|
      if line.include?('Version')
        ver = line.split(' ')
        if ARGV[0] != ver[1]
          puts 'bad'
        else
          puts 'Identical versions'
        end
      end
    end
  end
end