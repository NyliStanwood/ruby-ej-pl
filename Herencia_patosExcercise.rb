class Pato

  attr_accessor :name, :type
  def initialize(name)
    @name = name
    @type = 'pato'
  end

  def quack
    puts 'quack! Quack! QUACK!! QUACK!!'
  end
#attr_reader :marca, :velocidad #attr reader will let us read this values by obj.marca or obj.velocidad
#def initialize(params) #params is a hash
  #@marca = params[:marca]
  #
  def swim
    puts 'Swimming lalala'
  end

  def showDetails
    self.volar
    puts "My name is #{@name} and I am a #{@type} from Pato:class"
  end

  #protected
  def volar
    puts "los #{@type} pueden volar"
  end
end #End of class Pato

class Mallard < Pato
  def initialize(name)
    super(name)
    @type = 'Mallard'
  end

  def showDetails
    puts "My name is #{@name} and I am a #{@type} from Mallard:class"
  end

end #endo of class Mallard

pat = Pato.new('Pat')
pat.quack
pat.swim
pat.showDetails
pat.volar

m = Mallard.new('ducky')
m.quack
m.swim
m.showDetails
