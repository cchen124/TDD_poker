require "deck.rb"

class Hand
  def initialize(deck)
    @hand = []
    @deck = deck
    draw(5)
  end

  def length
    @hand.length
  end

  def draw(num) #move later to player class
    num.times do
      @hand << @deck.cards.pop
    end
  end
end
