require 'rspec'
require 'hand.rb'

describe Hand do
  describe "#new" do
    it "should hold 5 cards" do
      expect(Hand.new(Deck.new).length).to eq(5)
    end
  end
end
