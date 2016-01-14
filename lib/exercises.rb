require "board.rb"

class Array
  def my_uniq
    result = []
    self.each { |el| result << el unless result.include?(el) }
    result
  end

  def two_sum
    result = []

    i = 0
    while i < (length - 1)
      j = i + 1
      while j < length
        result << [i, j] if ((self[i] + self[j]) == 0)
        j += 1
      end
      i += 1
    end
    result
  end

  def my_transpose
    result = Array.new(self[0].length) { Array.new(self.length) }
    each_with_index do |row, i|
      row.each_with_index do |col, j|
        result[j][i] = self[i][j]
      end
    end
    result
  end
end
