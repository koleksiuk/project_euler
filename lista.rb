File.open("lista.txt", 'r') do |f|
  while (line = f.gets)
    puts "#{line.chomp}@student.mini.pw.edu.pl\n"
  end
end