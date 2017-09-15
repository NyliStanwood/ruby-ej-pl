class Ventilador

  #constructor. @values are instance variables
  def initialize(params) #params is a hash
    @marca = params[:marca]
    @velocidadmaxima = params[:velocidadmaxima]
    @velocidad = 0
    @numeroAspas = 3 #inizializar este valor por defecto
  end


#  def velocidad=(velocidad)
#    @velocidad = velocidad
#  end



  def presentacion
    return "La marca es #{@marca}, la velocidad es #{@velocidad} y tiene #{@numeroAspas} aspas"
  end

  def cambiarVelocidad
    if @velocidad == @velocidadmaxima
      @velocidad = 0;
    else
      @velocidad += 1
    end
    return @velocidad
  end

  #to be able to read the marca
  def marca
    @marca
  end

end

#objetoVentilador = Ventlador.new
#objetoVentilador.marca = 'Samsung'
#objetoVentilador = Ventilado.new('Samsung')

objetoVentilador = Ventilador.new({marca: "Samsung", velocidadmaxima: 5})
puts objetoVentilador.presentacion
puts objetoVentilador.marca
puts objetoVentilador.cambiarVelocidad

#variable global definida dentro de un metodo
def resta(a, b)
  $resultado = a-b
  puts $resultado
end

resta(10, 5)
puts $resultado


## ACCESORS
#attr_reader
#attr_writer
#arrt_accessor

class Ventilador2

  #constructor. @values are instance variables
  attr_reader :marca, :velocidad #attr reader will let us read this values by obj.marca or obj.velocidad
  def initialize(params) #params is a hash
    @marca = params[:marca]
    @velocidadmaxima = params[:velocidadmaxima]
    @velocidad = 0
    @numeroAspas = 3 #inizializar este valor por defecto
  end

  def presentacion
    return "La marca es #{@marca}, la velocidad es #{@velocidad} y tiene #{@numeroAspas} aspas"
  end

  def cambiarVelocidad
    if @velocidad == @velocidadmaxima
      @velocidad = 0;
    else
      @velocidad += 1
    end
    return @velocidad
  end
end

objetoVentilador2 = Ventilador2.new({marca: "Samsung", velocidadmaxima: 5})
puts objetoVentilador2.presentacion
puts objetoVentilador2.marca
puts objetoVentilador2.cambiarVelocidad


class Ventilador3

  #constructor. @values are instance variables
  attr_writer :marca, :velocidad #attr writer will let us edit this values by obj.marca = "any" or obj.velocidad = 2
  def initialize(params) #params is a hash
    @marca = params[:marca]
    @velocidadmaxima = params[:velocidadmaxima]
    @velocidad = 0
    @numeroAspas = 3 #inizializar este valor por defecto
  end

  def presentacion
    return "La marca es #{@marca}, la velocidad es #{@velocidad} y tiene #{@numeroAspas} aspas"
  end

  def cambiarVelocidad
    if @velocidad == @velocidadmaxima
      @velocidad = 0;
    else
      @velocidad += 1
    end
    return @velocidad
  end
end

objetoVentilador3 = Ventilador3.new({marca: "Samsung", velocidadmaxima: 5})
puts objetoVentilador3.presentacion
#puts objetoVentilador3.marca # will fail
objetoVentilador3.marca = "Panasonic"
puts "attr_writer let us change the marca, but not to read the value"
puts objetoVentilador3.presentacion
puts objetoVentilador3.cambiarVelocidad


class Ventilador4

  #constructor. @values are instance variables
  attr_accessor :marca, :velocidad #attr accessor will let us edit and read this values by obj.marca = "any" or obj.velocidad = 2
  def initialize(params) #params is a hash
    @marca = params[:marca]
    @velocidadmaxima = params[:velocidadmaxima]
    @velocidad = 0
    @numeroAspas = 3 #inizializar este valor por defecto
  end

  def presentacion
    return "La marca es #{@marca}, la velocidad es #{@velocidad} y tiene #{@numeroAspas} aspas"
  end

  def cambiarVelocidad
    if @velocidad == @velocidadmaxima
      @velocidad = 0;
    else
      @velocidad += 1
    end
    return @velocidad
  end
end

objetoVentilador4 = Ventilador4.new({marca: "Samsung", velocidadmaxima: 5})
puts objetoVentilador4.presentacion
puts objetoVentilador4.marca # will not fail now # we can read
objetoVentilador4.marca = "Panasonic" #we can edit
puts "attr_accessor let us read and edit the marca"
puts objetoVentilador4.presentacion
puts objetoVentilador4.cambiarVelocidad



## MODIFICADORES DE ACCESO

class Persona

  attr_accessor :nombre
  def initialize(nombre)
    @nombre = nombre
  end

  def dormir(num)
    puts "Durminedo #{num.to_s} horas"
  end

  def comer(num)
    puts "Comiendo #{num.to_s} platos"
  end

  def es_mayor_que?(num)
    self.edad > num
  end

#self method es como un methodo estatico, no se necesita crear un objeto para usar este methodo
def self.peso
    '15 kg'
end
  # si se pueden heredar
  # solo funcionan en esta clase
  #no se pueden llamar una vez creado el objeto
  #todos los metodo debajo de protected van a ser protected
  protected
  def edad
    calcular_edad
  end


  # NO se pueden heredar
  #solo funcionan dentro y desde la clase. no se pueden llamar desde el objeto.
  #todos los metodo debajo de private van a ser private
  private
  def calcular_edad
    rand(99)
  end
end


puts Persona.peso

p =  Persona.new('Annie')
#puts p.calcular_edad ## fail because its private
puts p.es_mayor_que?(20)


class Empleado < Persona
  def initialize()
    super('Brian')
  end

  def dormir(num)
    super(num)
  end

  def comer(num)
    super(num)
  end
end

e = Empleado.new
puts e.nombre
e.dormir(9)
e.comer(3)
