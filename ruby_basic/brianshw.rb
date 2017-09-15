string = " star cars cars rats scar race "
allwords = string.split(" ")

finalArray = Array.new
puts allwords

allwords.each do |word|
  puts "inside1"
  temp = Array.new
  allwords.each do |word2|
    puts "inside2"
    puts "word1:#{word} - #{word.chars.sort} || word2: #{word2} #{word2.chars.sort} || #{word.chars.sort == word2.chars.sort}"
    if word.chars.sort == word2.chars.sort
      temp.push(word2)
    end
  end
  puts "array temporal of #{word}"
  puts temp
  finalArray << temp.sort.uniq
end

finalArray.each do |array|
  puts word
end
