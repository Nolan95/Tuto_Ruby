puts "Entrez un chiffre"
chiffre = gets.chomp.to_i
if chiffre.even?
  puts "Ce chiffre est pair"
else
  puts "Ce chiffre est impair"
end
