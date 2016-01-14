require 'rspec'
require 'deck'

describe Deck do

  let(:deck) {Deck.new}
  describe "initialization of a fair deck" do
    it "has 13 cards of each suit" do
      expect(deck.cards.select{|card| card.suit == "s" }.length).to eq(13)
      expect(deck.cards.select{|card| card.suit == "d" }.length).to eq(13)
      expect(deck.cards.select{|card| card.suit == "h" }.length).to eq(13)
      expect(deck.cards.select{|card| card.suit == "c" }.length).to eq(13)
    end

    it "has been shuffled" do
      values = []
      deck.cards.each { |card| values << card.value }

      expect(values).not_to eq(values.sort)
    end
  end
end
