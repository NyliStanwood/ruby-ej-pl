hash = Hash.new();
hash = {'nombre': 'Marilyn'}
hash = {nombre: 'Marilyn'} #mas reomendada
hash = {:nombre => 'Marilyn'}
hash['nombre'] = 'Marilyn'


irb(main):083:0> hash = {'nombre': 'Marilyn'}
=> {:nombre=>"Marilyn"}
irb(main):084:0> hash = {nombre: 'Marilyn'}
=> {:nombre=>"Marilyn"}
irb(main):085:0> hash = {:nombre => 'Marilyn'}
=> {:nombre=>"Marilyn"}
irb(main):086:0> hash['nombre'] = 'Marilyn'
=> "Marilyn"
irb(main):087:0> bhash = {apellido: 'Stanwood'}
=> {:apellido=>"Stanwood"}
irb(main):088:0> hash = {nombre: 'Marilyn'}
=> {:nombre=>"Marilyn"}
irb(main):089:0> puts "MERGE de hashes"
MERGE de hashes
=> nil
irb(main):090:0> hash.merge(bhash)
=> {:nombre=>"Marilyn", :apellido=>"Stanwood"}
irb(main):091:0> hash
=> {:nombre=>"Marilyn"}
irb(main):092:0> chash = hash.merge(bhash)
=> {:nombre=>"Marilyn", :apellido=>"Stanwood"}
irb(main):093:0> chash.to_a
=> [[:nombre, "Marilyn"], [:apellido, "Stanwood"]]
irb(main):094:0> puts "TO_A convierte el hash to array"
TO_A convierte el hash to array
=> nil
irb(main):095:0> "TO_Hash or TO_H convierte a hash un array"
=> "TO_Hash or TO_H convierte a hash un array"
irb(main):096:0> a
=> [1, 2, 3, [4, [5, 6]]]
irb(main):097:0> b
=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
irb(main):098:0> b.to_h
TypeError: wrong element type Integer at 0 (expected array)
        from (irb):98:in `to_h'
        from (irb):98
        from C:/Ruby24-x64/bin/irb.cmd:19:in `<main>'
irb(main):099:0> chash.to_h
=> {:nombre=>"Marilyn", :apellido=>"Stanwood"}
irb(main):100:0> chash
=> {:nombre=>"Marilyn", :apellido=>"Stanwood"}
irb(main):101:0> chash.to_a
=> [[:nombre, "Marilyn"], [:apellido, "Stanwood"]]
irb(main):102:0> chash
=> {:nombre=>"Marilyn", :apellido=>"Stanwood"}
irb(main):103:0> chash.to_a!
NoMethodError: undefined method `to_a!' for {:nombre=>"Marilyn", :apellido=>"Stanwood"}:Hash
Did you mean?  to_a
               to_h
               to_s
        from (irb):103
        from C:/Ruby24-x64/bin/irb.cmd:19:in `<main>'
irb(main):104:0> arrayFromHash = chash.to_a
=> [[:nombre, "Marilyn"], [:apellido, "Stanwood"]]
irb(main):105:0> arrayFromHash
=> [[:nombre, "Marilyn"], [:apellido, "Stanwood"]]
irb(main):106:0> arrayFromHash.to_h
=> {:nombre=>"Marilyn", :apellido=>"Stanwood"}
irb(main):107:0>
