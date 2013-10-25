if __FILE__ == $0
  answers = []
  ARGV.each do|a|
    puts "Matching #{a}"
    
    file = File.open('Build.Model - models.csv').read
    file.gsub!(/\r\n?/, "\n")
    file.each_line do |line|
      spl = line.split(',')
      if spl[1].include?(a)
        answers << "#{spl[0]} - #{spl[3]}"
      end
    end
    
  end
  puts answers
end
