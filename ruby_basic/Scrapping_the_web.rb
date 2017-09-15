require 'nokogiri' #for search inside a htmlfile
require 'open-uri' #for open link and load it to ruby thread

url = 'http://www.reactiongifs.com/'
#Modulo::clase_inside_module(parametro)
#Nokogiri::HTML(open(url))


#we want to do code inside 5 times

5.times do |i|
  puts "PAGINA - #{i} -"
  document = Nokogiri::HTML(open(url))

  #puts document

  div_main = document.css('div#main')
  #div_main.css('div.post') #nos regresa un arreglo con todos los posts
  div_main.css('div.post').each do |post|
    #buscamos en cada post queremos los titulos (que estan dentro de entiquetas h2)
    #despues llamamos a su texto dentro
    title = post.css('h2').text
    #buscamos div clase entry + etiqueta imagen. atributo(src)
    gif_url = post.css('div.entry img').attr('src')
    puts "Descargando: #{title}"
    #file.open para crear archivo con nombre title. w para que sea de escritura
        #do para iterar cada espacio del archivo
        ## REQUIRE to create the gifs folder previously
    File.open("gifs/#{title}", 'w')do |new_file|
      #abrir url del gif r para leerlo read
          #do para iterar sobre los fragmenstos que esta leyendo y los escriba en mi archivo nuevo
      open(gif_url, 'r') do |gif_fragments|
        new_file.write(gif_fragments.read)

      end
    end
  end

  #search for the next url // next entries
  #buscar etiqueta div, clase nav-entries con otra etiqueta div clase nav-next y con la etiqueta <a> dentro (atributo href)
  #document.css('div.nav-entries div.nav-next a').attr('href')

  url = document.css('div.nav-entries div.nav-next a').attr('href')
end #endo of 5times

=begin
lalala
yY

=end
