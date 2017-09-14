#metodo que llama un bloque
def ejecutar (&block) # & pasa unbloque como argumento
  block.call  #ejecuta el bloque que fue recibido como argumento
end

ejecutar {puts "hi"} #llama a metofo con bloque (como parametro)
#ejecutar   #sin bloque y sin yield daria un error

def ejecutar2(&bloque)
  if block_given?
    bloque.call #same as yield
  else
    puts 'No tiene bloque asignado'
  end
end

ejecutar2



def ejecutar3(&bloque)
  if block_given?
    yield #same as bloque_variable.call
  else
    puts 'No tiene bloque asignado'
  end
end

ejecutar3
