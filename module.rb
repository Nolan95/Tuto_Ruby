require 'date'
require_relative 'eleve'
module Cercle

  PI = 3.1415

  def self.perimetre(rayon)
    2 * PI * rayon
  end

end

puts Cercle.perimetre(10)

puts Date.today.saturday?

Global::Eleve.new('Jean').afficherNom
