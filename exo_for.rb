aDeviner = 4
puts "Entre le chiffre"
chiffre = gets.chomp.to_i
for num in 1..3
  next if aDeviner == chiffre
  if aDeviner < chiffre
    puts "Trop grand"
  elsif aDeviner > chiffre
    puts "Trop petit"
  end
  puts "Entre le chiffre"
  chiffre = gets.chomp.to_i
end
puts "Vous avez gagne" if aDeviner == chiffre
