eleves = ['Jean', 'Jacques', 'Marine']
eleves.each do |eleve|
  puts "Bonjour #{eleve}"
end

marine = {age: 18, nom: "Marine", note: 17}
marine.each do |key, value|
  puts "#{key}: #{value}"
end
