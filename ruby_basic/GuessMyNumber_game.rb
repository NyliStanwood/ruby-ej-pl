
def checkingStringNum(str)
  puts 'Empty guess' if str.empty?
  str.to_i.to_s == str
end

puts "I am thinking about ... a random number. \nGive me your best guess: "
myRandomNumber = Random.rand(10)
puts myRandomNumber

notGuessed = true
while notGuessed
  yourNumString = gets.chomp

  if checkingStringNum(yourNumString) && yourNumString.to_i == myRandomNumber
    puts "YAY! You guessed!! :) I thought about #{myRandomNumber}"
    notGuessed = false
  elsif !checkingStringNum(yourNumString)
    puts "You need a number"
  else
    puts "Guess again"
  end
end
