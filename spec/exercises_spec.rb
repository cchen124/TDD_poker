require 'rspec'
require 'spec_helper'
require 'exercises.rb'

describe Array do
  let(:array) { [1, 2, 3, 3] }
  describe "#my_uniq" do
    it "returns a new array" do
      expect(array.my_uniq).not_to be(array)
    end

    it "removes duplicates in the new array" do
      expect(array.my_uniq).to eq([1, 2, 3])
    end

    it "does not modify the original array" do
      array.my_uniq
      expect(array).to eq(array)
    end
  end

  describe "#two_sum" do

    context "the input is an empty array" do

      subject(:array) {[]}
      it "handles an empty array and returns a new empty array" do
        expect(subject.two_sum).to eq([])
        expect(subject.two_sum).not_to be(subject)
      end
    end

    context "the input is a simple array" do

      subject(:array) { [-1, 0, 2, -2, 1] }
      it "handles a simple case with two pairs" do
        expect(subject.two_sum).to eq([[0,4], [2,3]])
      end

      it "returns pairs in dictionary-sorted order" do
        expect(subject.two_sum).to eq(subject.two_sum.sort)
      end

    end
  end

  describe "#my_transpose" do
    context "transposes a square matrix" do

      let(:array){[[0,1,2],[3,4,5],[6,7,8]]}
      it "returns a new transposed matrix" do
        expect(array.my_transpose).to eq([[0,3,6],[1,4,7],[2,5,8]])
      end
    end

    context "transposes a non-square matrix" do
      let(:array){[[0,1],[2,3],[4,5]]}
      it "returns a new transposed matrix" do
        expect(array.my_transpose).to eq(array.transpose)
      end
    end
  end

end

describe Board do
  subject(:board) { Board.new([[1],[2],[3]]) }

  describe "#render" do

    it "should display stuff" do
      expect(board.render).to eq("1|2|3|")
    end
  end

  describe "#move" do

    it "moves one disc from original tower to new tower" do
      expect(board.move([2,0])).to eq([[1,3],[2],[]])
    end
  end

  describe "#won?" do
    
    it "returns true if you have moved all discs onto tower one" do
      board.discs = [[1, 2, 3], [], []]
      expect(board.won?).to eq(true)
    end

    it "returns false if you have not moved all discs onto a tower" do
      board.discs = [[1, 2], [3], []]
      expect(board.won?).to eq(false)
    end
  end
end
