class FrequencyDrift
  def initialize(display)
    parse_display(display)
  end

  def solve
    inputted_display.reduce(0, :+)
  end

  private
  attr_accessor :inputted_display

  def parse_display(display)
    @inputted_display = display.split(',').map(&:strip).map(&:to_i)
  end
end

input = File.open('input.txt').readlines.map(&:strip).join(", ")
fd = FrequencyDrift.new(input)
puts fd.solve
