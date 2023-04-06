class Main
  def self.main
    puts "Enter the text:"
    text = gets.chomp.downcase
    words = text.gsub(/[a-zA-Z0-9]+/)

    word_count = {}
    words.each do |word|
      if word_count[word]
        word_count[word] += 1
      else
        word_count[word] = 1
      end
    end

    sorted = word_count.sort_by { |word, count| -count }

    puts "\nThe most often words to meet:"
    sorted.each_with_index do |(word, count), index|
      break if index >= 3
      puts "#{word}: #{count}"
    end
  end

  Main.main()

end