require_relative 'card.rb'

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    populate
    @cards.shuffle!
  end

  private

  SUITS = ["d", "c", "h", "s"]

  def populate
    (2..14).to_a.each do |value|
      SUITS.each do |suit|
        @cards << Card.new(value, suit)
      end
    end
  end
end
