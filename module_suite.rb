module Marche

  def marcher
    puts "Je marche"
  end

end

class Humain
  include Marche
end


class Chat
  include Marche
end

class Dophin

end

Chat.new.marcher

Humain.new.marcher
