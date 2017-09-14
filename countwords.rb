initials = ' nyli brian 12jk 23lll nyli brian brian lol? lol LOL'
puts initials
temp = initials.downcase.delete('^a-z ')

puts temp

temp = temp.split(' ')
puts temp

textHash = Hash.new(0)
temp.each do |word| textHash[word] += 1
end

textHash.each_pair { |name, val| puts "#{name} -> #{val}"  }
