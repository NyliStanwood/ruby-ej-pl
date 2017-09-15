hash = Hash.new();
hash = {'nombre': 'Marilyn'}
hash = {nombre: 'Marilyn'} #mas recomendada
hash = {:nombre => 'Marilyn'}
hash['nombre'] = 'Marilyn'
#hash
#> {:nombre=>"Marilyn"}

hash['nombre'] = 'Marilyn'
#=> "Marilyn"

bhash = {apellido: 'Stanwood'}
#=> {:apellido=>"Stanwood"}



puts "MERGE de hashes"

hash.merge(bhash)
#=> {:nombre=>"Marilyn", :apellido=>"Stanwood"}

#hash
#=> {:nombre=>"Marilyn"}

puts "save in chash the result of merging hash and bhash"
chash = hash.merge(bhash)
#=> {:nombre=>"Marilyn", :apellido=>"Stanwood"}



puts "TO_A convierte el hash to array (bidimencinal)"
chash.to_a
#=> [[:nombre, "Marilyn"], [:apellido, "Stanwood"]]


puts "TO_Hash or TO_H convierte a hash un array"


#b
#=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#b.to_h
#TypeError: wrong element type Integer at 0 (expected array)
        #from (irb):98:in `to_h'
        #from (irb):98
        #from C:/Ruby24-x64/bin/irb.cmd:19:in `<main>'

chash.to_h
#=> {:nombre=>"Marilyn", :apellido=>"Stanwood"}
#chash
#=> {:nombre=>"Marilyn", :apellido=>"Stanwood"}

chash.to_a
#=> [[:nombre, "Marilyn"], [:apellido, "Stanwood"]]
#chash
#=> {:nombre=>"Marilyn", :apellido=>"Stanwood"}

#chash.to_a! NoMethodError: undefined method `to_a!' for {:nombre=>"Marilyn", :apellido=>"Stanwood"}:Hash
#Did you mean?  to_a
