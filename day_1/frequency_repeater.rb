class FrequencyRepeater
  def initialize(frequency_changes)
    parse_input(frequency_changes)
  end

  def solve
    repeated_frequency = nil
    index = 0
    frequency_list = [0]
    while true do
      new_frequency = frequency_list.last + frequency_changes[index]
      return new_frequency if frequency_list.include?(new_frequency)
      frequency_list << new_frequency
      index = (index + 1) % list_length
    end
  end

  private
  attr_accessor :frequency_changes

  def parse_input(list)
    @frequency_changes = list.split(',').map(&:strip).map(&:to_i)
  end

  def list_length
    frequency_changes.length
  end
end


input = File.open('input.txt').readlines.map(&:strip).join(", ")
fd = FrequencyRepeater.new(input)
puts fd.solve