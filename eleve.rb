class Eleve
  MOYENNE = 10
  attr_reader :nom, :moyenne, :notes
  def initialize(nom)
    @nom = nom
    @notes = []
  end

  def ajouterNote(note)
    @notes.push(note)
  end
  def moyenne?
    moyenne >= MOYENNE
  end
  def moyenne
    somme = 0
    @notes.each { |note|
        somme += note
    }
    somme /= @notes.length
  end
end



eleve = Eleve.new("Jean")
eleve.ajouterNote(18)
eleve.ajouterNote(10)
eleve.ajouterNote(8)
puts eleve.notes
puts "Moyenne ? #{eleve.moyenne?}"
puts "Moyenne de #{eleve.nom} : #{eleve.moyenne}"
