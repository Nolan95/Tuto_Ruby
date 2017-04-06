aDeviner = 4
loop do
  puts "Entrez le chiffre"
  chiffre = gets.chomp.to_i
  if aDeviner < chiffre
    puts "Trop grand"
  elsif aDeviner > chiffre
    puts "Trop petit"
  else
    puts "Vous avez devinez le chiffre"
    break
  end
end
