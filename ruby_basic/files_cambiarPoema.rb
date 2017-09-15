file = File.open('hola.txt', 'w')
# => #<File:hola.txt>
file.puts 'Hola extranger'
# => nil
file.close
# => nil
file = File.open('hola.txt', 'r')
# => #<File:hola.txt>
file.read
# => "Hola extranger\n"
File.open('hola.txt').readlines.each do |lines| puts lines end
#Hola extranger
#como estas
# => ["Hola extranger\n", "como estas\n"]

new_array = []
File.open('volbeat.txt').readlines.each do |line|
  new_array << line.reverse
end
#puts new_array.reverse

#crea nuevo archivo ananiendo lineas de un array que estamos leyendo
newFile = File.open('volbeat_reverse.txt', 'w')
new_array.reverse.each do |variable|
  newFile.puts variable
end
newFile.close
