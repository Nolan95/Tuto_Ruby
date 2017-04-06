test = "I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. I can't get involved! I've got work to do! It's not that I like the Empire, I hate it, but there's nothing I can do about it right now. It's such a long way from here"
frequence = Hash.new(0)
mots = test.downcase.tr('.",', ' ').split(' ')
mots.each do |mot|
  frequence[mot] += 1
end

frequence = frequence.sort_by { |mot, count| count }
frequence.reverse!

frequence.each { |mot|
  puts "le mot \"#{mot[0]}\" apparait #{mot[1]} fois"
}
