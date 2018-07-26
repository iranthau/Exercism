module BookKeeping
  VERSION = 1
end

class Grains
  NUMBER_OF_SQAURES = 64

  def self.square(square_number)
    raise ArgumentError unless (1..NUMBER_OF_SQAURES).include?(square_number)

    2 ** (square_number - 1)
  end

  def self.total
    2 * square(NUMBER_OF_SQAURES) - 1
  end
end
