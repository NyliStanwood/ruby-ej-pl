require './patosHerencia' #llama al archivo de l mismo nivel

puts "\n\n\nPolimorfismo"
pa = Pato.new('PatosHerencia')
pa.showDetails

class PatitoDeGoma < Pato #hereda de Pato
  def inizializar(nombre="Gomita")
    super(nombre)
  end

  def hacer_quak
    puts 'squuueeeek'
  end

  def volar
    puts 'no puedo volar'
  end
end# end of class

go = PatitoDeGoma.new("g")
go.hacer_quak
go.volar
go.showDetails
