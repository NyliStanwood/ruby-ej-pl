module Area #clases no instanciables
  PI = 3.14159

  #nombre del modulo . methodo
  def Area.circulo
    "#{PI} por radio al cuadrado"
  end

  #def area_circulo#no funciona lol
  #  "#{PI} por radio al cuadrado"
  #end

  def Area.cuadrado
    "Lado al cuadrado"
  end

  class CirculoClass
    def self.definicion
        "#{PI} por radio al cuadrado. puts ModuloName::ClassName.method"
    end
  end #end of class circulo



end #end of module

module Perimetro
  PI = 3.14
  class CirculoClass2
    def self.definicion
      puts "2 veces #{PI} por radio puts ModuloName::ClassName.method"
    end
  end#end of class
end #end of module


puts Area::PI
puts Area.circulo
puts Area.cuadrado

puts Area::CirculoClass.definicion

puts Perimetro::CirculoClass2.definicion



## MIXINS clase implementa modulos para simular polimorfismo
#se crea mediante include and extends

module ConversionINC
  def palabra
    return "uno"  if @valor == 1
    return "muchos"
  end
end #end of module

class Numero
  #similar to interface
  include ConversionINC #incluye al modulo conversion
  attr_accessor :valor
end #end of class

incluye = Numero.new #crear un objeto de Numero class
incluye.valor = 1
puts incluye.valor
puts incluye.palabra

puts "AHORA con EXTEND"
##Metodo extends
module ConversionEXT
  def palabra
    return "uno"  if @valor == 1
    return "muchos"
  end
end #end of module

class NumeroExt
  attr_accessor :valor
  def palabra
    @valor.to_s
  end
end #end of class

ext = NumeroExt.new #crear un objeto de Numero class
ext.valor = 10
puts ext.palabra

ext.extend(ConversionEXT)
puts ext.palabra
