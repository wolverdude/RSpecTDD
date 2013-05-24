class Hanoi
  attr_reader :towers

  def initialize
    @towers = Array.new(3) { [] }
  end

  def render
'1 | |
2 | |
3 | |'

  end

end
