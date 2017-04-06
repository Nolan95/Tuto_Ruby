puts "Entrez un chiffre"
chiffre = gets.chomp.to_i
aDeviner = 4
while aDeviner != chiffre
  if aDeviner < chiffre
    puts "Trop grand"
  end
  if aDeviner > chiffre
    puts "Trop petit"
  end
  puts "Desole :(, c'est pas le bon reesayez "
  puts "Entrez le chiffre"
  chiffre = gets.chomp.to_i

end
puts "Vous avez devinez le chiffre"
