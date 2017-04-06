=begin
tableau = [1, 2, 3]
tableaux2 = tableau.map { |item| item * 2 }
puts tableaux2.inspect


def demo
  puts "Bonjour"
  yield("Marc")
  yield("Jean")
  puts "Aurevoir"
end

puts demo { |nom| puts "Comment ca va #{nom}?"}

=end

eleves = [
  {note:12, nom:'Bart'},
  {note:15, nom:'Vincent'},
  {note:20, nom:'Marine'},
  {note:4, nom:'Laura'}
]

def alamoyenne(eleves)
  eleves.each do |eleve|
    if eleve[:note] >= 10
      yield(eleve)
    end
  end
end

afficherQuiALamoyenne = Proc.new {|eleve| puts "#{eleve[:nom]} a la moyenne"}
afficherQuiALamoyenne.call({note:4, nom:'Laura'})
#alamoyenne(eleves, &afficherQuiALamoyenne)

=begin
a = [1, 2, 3]
b = [2, 4, 6]

carre = Proc.new {|n| n**2}
a.map!(&carre)
b.map!(&carre)

puts a.inspect
puts b.inspect
=end
