#arreglos
a = Array.new
# # => []
a = Array.new(10)
# # => [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
Array.new(10, 1)
# # => [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
a = Array.new(10, 5..15)
# # => [5..15, 5..15, 5..15, 5..15, 5..15, 5..15, 5..15, 5..15, 5..15, 5..15]
a = Array(5..15)
# # => [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
a = Array(1...10)
# # => [1, 2, 3, 4, 5, 6, 7, 8, 9]
a = [2,4,6,8,0]
# # => [2, 4, 6, 8, 0]
a.push(123)
# # => [2, 4, 6, 8, 0, 123]
a << 123
# # => [2, 4, 6, 8, 0, 123, 123]
puts "add element at the [0] position"
# # => nil
a.unshift(333)
# # => [333, 2, 4, 6, 8, 0, 123, 123]
puts "add element at any position indicada"
#add element at any position indicada
# # => nil
a.insert(3, "elemento")
# # => [333, 2, 4, "elemento", 6, 8, 0, 123, 123]
puts "ELIMINAR ELEMENTOS"
#ELIMINAR ELEMENTOS
puts "POP delete last value"
a.pop
# # => 123
puts "SHIFT deleted first value"
a.shift
# # => 333
puts "DELETE_AT deletes an element indicated by the indice"
a.delete_at(3)
# # => 6
a.delete_at(2)
# # => "elemento"
a.push(123)
# # => [2, 4, 8, 0, 123, 123]
a.push(123)
# # => [2, 4, 8, 0, 123, 123, 123]
a.push(123)
# # => [2, 4, 8, 0, 123, 123, 123, 123]
a.push(123)
# # => [2, 4, 8, 0, 123, 123, 123, 123, 123]
puts "DELETE delete the values indicated"
a.delete(123)
# # => 123
#irb(main):032:0> a
# # => [2, 4, 8, 0]
a.push(2)
# # => [2, 4, 8, 0, 2]
a.push(2)
# # => [2, 4, 8, 0, 2, 2]
a.push(4)
# # => [2, 4, 8, 0, 2, 2, 4]
a.push(4)
# # => [2, 4, 8, 0, 2, 2, 4, 4]
a.push(4)
# # => [2, 4, 8, 0, 2, 2, 4, 4, 4]
puts "UNIQ delete repeated elements"
a.uniq
# # => [2, 4, 8, 0]
puts "UNIQ retuns a array without the repeated elements, use .uniq! to make it permanent"

#irb(main):042:0> a
# # => [2, 4, 8, 0, 2, 2, 4, 4, 4]
a.uniq!
# # => [2, 4, 8, 0]
#irb(main):044:0> a
# # => [2, 4, 8, 0]

puts "This 3 are the same"
puts a.size
puts a.count
puts a.length

a = Array(5..15)
# => [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
puts "INCLUDE returns true or false"
a.include? 5
# => true
a.include? 4
# => false
puts "MAP sirve para iterar y para editar los valores del array"
a.map{|i| i*2}
# => [10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]
puts "MAP! sirve para iterar y para editar los valores del array permanente"
a.map!{|i| i*2}
# => [10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]
puts "MAP sirve para iterar y para editar los valores del array, regresa un nuevo array"
puts "EVEN? regresa true or false si el elemento es par"
4.even?
# => true
5.even?
# => false
a.map &(:even?)
# => [true, true, true, true, true, true, true, true, true, true, true]
puts "Map regresa el resultado de la operacion en cada iteracion"
puts "REDUCE ejecuta una operacion sobre todos los elementos y regresa el resultado."
puts "REDUCE+ ejecuta una suma de todos los elementos"
a.reduce(:+)
# => 220
puts "REDUCE+ ejecuta una suma de todos los elementos mas un valor inicial"
a.reduce(100, :+)
# => 320
puts "REDUCE encontrar el elemento con el valor mas grande compararando un valor inicial, y el segundo elemento mientras itera e itera"
a.reduce do |first, second|
  if first > second
    first
  else
    second
  end
  end
# => 30
puts "SELECT itera sobre los elementos y regresa un array con todos los elementos q cumplan con la condicion"
a.select{ |i| i > 10 }
# => [12, 14, 16, 18, 20, 22, 24, 26, 28, 30]
a.select{ |i| i > 20 }
# => [22, 24, 26, 28, 30]
puts "SELECT! altera el array"

puts "REJECT regresa un array que hace lo opuesto a select"
a.reject { |i| i>20}
# => [10, 12, 14, 16, 18, 20]
puts "REJECT! altera el array"

puts "DROP_WHILE funciona igual q REJECT! "
puts a
# => [10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]
a.drop_while { |i| i > 20 }
# => [10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]
a.drop_while { |i| i < 20 }
# => [20, 22, 24, 26, 28, 30]
a.drop_while { |i| i > 20 }
# => [10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]

puts "DELETE_IF similar a REJECT!"
a.delete_if{ |i| i > 28}
# => [10, 12, 14, 16, 18, 20, 22, 24, 26, 28]

puts "KEEP_IF funciona similar a SELECT!"
a.keep_if{ |i| i > 24}
# => [26, 28]
puts a
# => [26, 28]

#NEW ARRAY
a = Array(5..15)
# => [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]


puts "ANY? returns true or false if any elemnt matched the contition"
a.any? { |i| i % 7 == 0 }
# => true
a.any? { |i| i == 0 }
# => false
a.any? { |i| i == 7 }
# => true
puts "ALL? returns true or false if ALL elemnts matched the condition"
a.all? { |i| i % 7 == 0 }
# => false

#NEW 2 ARRAYS
a = Array(0..5)
# => [0, 1, 2, 3, 4, 5]
b = Array(0..10)
# => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "& : interseccion ... regresa los elemnto que son comun en ambos arrays"
a & b
# => [0, 1, 2, 3, 4, 5]
a * 2
# => [0, 1, 2, 3, 4, 5, 0, 1, 2, 3, 4, 5]
puts " * regresa un array con el doble de elementos "

puts "Concatenar arreglo con una cadena  estilo mutipicacion"
a * 'ha'
# => "0ha1ha2ha3ha4ha5"
b - a #Restar arrays
# => [6, 7, 8, 9, 10]
b
# => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
b + a #Sumar arrays
# => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0, 1, 2, 3, 4, 5]
puts "COLLECT similar a MAP, regresa un array con los elementos modificados en cada iteracion"
a
# => [0, 1, 2, 3, 4, 5]
a.collect { |i| i * 2 }
# => [0, 2, 4, 6, 8, 10]

a.each_with_index { |value, index| puts index, value}
0
0
1
1
2
2
3
3
4
4
5
5
# => [0, 1, 2, 3, 4, 5]

puts "FLATTEN return nuevo array donde elimina los niveles de arreglos dentro de arreglos"
a = [1,2,3,[4,[5,6]]]
# => [1, 2, 3, [4, [5, 6]]]
a.flatten
# => [1, 2, 3, 4, 5, 6]
