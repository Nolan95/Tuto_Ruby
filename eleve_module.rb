module Notable

  MOYENNE = 10

  def ajouterNote(note)
    raise ArgumentError, "note n'est pas un entier" if !note.respond_to? :to_i
    notes << note
  end

  def moyenne?
    moyenne >= MOYENNE
  end

  def moyenne
    somme = 0
    notes.each do |note|
      somme += note
    end
    somme / notes.length
  end

  def notes
    @notes = [] if !@notes
    @notes
  end

end

class Eleve

  MOYENNE = 10

  attr_reader :nom, :notes

  include Notable

  def initialize(nom)
    @nom = nom
    @notes = []
  end

  def afficherNom
    puts "Je suis #{nom}"
  end

end

class Delegue < Eleve

  def moyenne
    moyenne = super
    moyenne += 1
  end

end

class Professeur
  include Notable
end

magaye = Professeur.new
begin
  puts "Le professeur a #{magaye.moyenne} comme moyenne"
rescue ArgumentError
  puts "Impossible d'ajouter une note"
rescue ZeroDivisionError
  puts "Le professeur n'a pas de note"
end
