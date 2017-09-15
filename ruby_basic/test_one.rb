
#ruby console
#$irb
#ruby archivo.rb
puts "Hello extranger"
#5 al cuadrado
puts 5**2
puts Math.sqrt(9)
#CONVERCIONES
puts 'hola' + 2.to_s
puts 4 + '2'.to_i  #is 6
puts 50.to_f

puts 'linea normal'
puts 'primera linea\\nsegundalinea' #doesnt work
puts '\\ttab' #doesnt work
puts """
este texto
tiene
varias
lineas
"""
puts "primera linea\nsegundalinea"
puts "\ttab"



#IF else
puts 'Whats your name?'
nombre = gets.chomp
if nombre == 'nyli'
  puts 'you are amazing'
elsif nombre == 'brian'
  puts "you are amazing too, #{nombre}"
else
  puts 'hello you!'
end
#CASE
case nombre
when 'nyli'
  puts "you are amazing again!!"
when 'brian'
  puts "you are fantastic"
when 'annie'
  puts 'you are a cutie'
end



def es_primo?(numero)
  (2..(numero - 1)).each do |i|
    if numero % i == 0
      return false
    end
  end
  true
end

puts 'Ingrese un número:'
numero = gets.chomp.to_i
if es_primo?(numero) #Using above function
  puts "Es primo"
else
  puts "No es primo"
end






#Testing PARAMETERS in a row
def saludo1 (*args)
  puts "Hello #{args[0]}"
  puts "Hello #{args[1]}"
  puts "Hello #{args[2]}"
end
saludo1("Annie", "Brian", "June")

#Testing Parameter by default
def saludo2 (nombre="terricola")
  puts "Hello #{nombre}"
end
saludo2()
saludo2("Joe")


#Sending parameters as a HASH
def saludo3(hash)
  puts "Hola"
  puts "Tu nombre es #{hash[:nombre]}"
  puts "Tu apellido es #{hash[:apellido]}"
  puts "Tu edad es #{hash[:edad]}"
end
saludo3({nombre: "Marilyn", apellido:"Stanwood", edad:30})

mytestString = "testing SOME fuctions from ruby"
puts mytestString
puts mytestString.capitalize
puts '.length'
puts mytestString.length
puts '.reverse'
puts mytestString.reverse
puts '.upcase'
puts mytestString.upcase
puts '.downcase'
puts mytestString.downcase


#USE of UNLESS
hungry = true
puts 'hungry = true'
puts 'wont be printed' unless hungry
hungry = false
puts 'hungry = false'
puts 'I guess I am not hungry' unless hungry

unless hungry
  puts 'will be working'
else
  puts 'damm I am very hungry!!'
end


#use of asignation of a boolean value
is_true = 2 == 2
puts 'is_true = 2 == 2'
puts is_true


if 'this very long string'.include? "s"
  puts "my string had a S"
end

st = "yo te xtranio"
st.gsub!(/x/, 'ex')
puts st

puts "hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"
puts "hello".gsub(/([aeiou])/, '<\1>')             #=> "h<e>ll<o>"
puts "hello".gsub(/./) {|s| s.ord.to_s + ' '}      #=> "104 101 108 108 111 "
puts "hello".gsub(/(?<foo>[aeiou])/, '{\k<foo>}')  #=> "h{e}ll{o}"
puts 'hello'.gsub(/[eo]/, 'e' => 3, 'o' => '*')    #=> "h3ll*"



5.times { puts '5 times lol'}



# WHILE
counter = 5
while counter != 0
    puts "my while counter: #{counter}"
    counter = counter - 1
end


#this loop works weally well... :P
#loop { puts "This will keep printing until you hit Ctrl + c" }




i = 0
loop do
  i += 1
  puts i
  break         # this will cause execution to exit the loop
end



i = 0
loop do
  i = i + 1
  puts i
  break if i == 10       # this will cause execution to exit the loop
  #end
end


i = 0
loop do
  i += 2
  puts i
  if i == 10
    break       # this will cause execution to exit the loop
  end
end




# FOR
puts 'for num ... 5 doesnt include 15'
for num in 1... 5  #works also without space 1...5
  puts "my for n: #{num}"
end

puts 'for num .. 5 will include 15'
for i in 1.. 5
  puts "my for i: #{i}"
end


=begin


while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end


$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1
end while $i < $num




$i = 0
$num = 5

until $i > $num  do #with do or not do
   puts("Inside the loop i = #$i" )
   $i +=1;
end



$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1;
end until $i > $num




(0..5).each do |i|
   puts "Value of local variable is #{i}"
end

(0..5).each { |i| puts "Value of local variable is #{i}" }




#NEXT EXAMPLE
for i in 0..5
   if i < 2 then
      next
   end
   puts "Value of local variable is #{i}"
end



#BREAK EXAMPLE
for i in 0..5
   if i > 2 then
      break
   end
   puts "Value of local variable is #{i}"
end


#REDO EXAMPLE
for i in 0..5
   if i < 2 then
      puts "Value of local variable is #{i}"
      redo
   end
end



#RETRY
begin
   do_something # exception raised
rescue
   # handles error
   retry  # restart from beginning
end




for i in 1..5
   retry if some_condition # restart from i == 1
end







=end



gets.chomp
