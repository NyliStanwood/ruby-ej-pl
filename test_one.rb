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
puts 'name?'
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
if es_primo?(numero)
  puts "Es primo"
else
  puts "No es primo"
end


def saludo1 (*args)
  puts "Hello #{args[0]}"
  puts "Hello #{args[1]}"
  puts "Hello #{args[2]}"
end
saludo1("Annie", "Brian", "June")


def saludo2 (nombre="terricola")
  puts "Hello #{nombre}"
end

saludo2()
saludo2("Joe")


def saludo3(hash)
  puts "Hola"
  puts "Tu nombre es #{hash[:nombre]}"
  puts "Tu apellido es #{hash[:apellido]}"
  puts "Tu edad es #{hash[:edad]}"
end

saludo3({nombre: "Marilyn", apellido:"Stanwood", edad:30})


gets.chomp
