class Board
  attr_accessor :discs
  def initialize(discs)
    @discs = discs
  end

  def render
    str = ""
    @discs.each do |tower|
      tower.each do |num|
        str += num.to_s
      end
      str += "|"
    end
    str
  end

  def move(pos)
    @discs[pos[1]].push(@discs[pos[0]].pop)
    @discs
  end

  def won?
    @discs.any? { |tower| tower.length == 3 }
  end
end
