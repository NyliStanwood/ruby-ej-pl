require 'erb' #clase de ruby que ya viene instalada

class Application
  def self.call(env)
    if env['PATH_INFO'] == '/' #si la URL del cliente viene vacia, regresa http200
      #body = ERB.new(File.open('index.html.rb').read)
      #igual a
      #body2 = ERB.new(File.read('index.html.erb'))
      @mensaje = 'Hello extranger'
      filename = 'index.html.erb'  # @arg1 and @arg2 are used in example.rhtml
      erb = ERB.new(File.read(filename))
      erb.filename = filename
      puts filename

      puts erb
      [200, {}, [erb.result(binding)]]
    else
      [404, {}, ['This page does not exist MUAHAHAHAHAHA']]
    end
  end
end
