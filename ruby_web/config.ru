=begin
crea un proc.new el cual va a recibir en |env| todo lo que nos envia el cliente
  cliente es el brownser -porque esta es una app web sencilla
  la responce al cliente es
  http200OK, {hash que necesita, pero lo enviaremos vacio}. y la respuesta para ser enviada

  se ejecuta en la consola con:
  rackup config.ru
=end
#run Proc.new { |env| [200, {}, ['Hola mundo']]}

#en el browser usar
#http://localhost:9292/
#http://localhost:9292/h


=begin
#refactorizamos el codigo de arriba
run Proc.new { |env|
  if env['PATH_INFO'] == '/' #si la URL del cliente viene vacia, regresa http200
    [200, {}, ['<h1>Hola mundo</h1>']]
  else
    [404, {}, ['This page does not exist MUAHAHAHAHAHA']]
  end
}
=end

=begin
#we refactorized upper code again
class Application
  def self.call(env)
    if env['PATH_INFO'] == '/' #si la URL del cliente viene vacia, regresa http200
      [200, {}, ['<h1>Hola mundo</h1>']]
    else
      [404, {}, ['This page does not exist MUAHAHAHAHAHA']]
    end

  end
end

run Application
=end

#we create a .rb file for Application class
#require './Application' #<<<=uncomment  to run Aplication.rb file

require './Application2_Httpart'

run Application
