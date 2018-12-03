require_relative '../frequency_repeater'

describe FrequencyRepeater do
  describe 'solutions' do
    it 'solves for +1, -1' do
      fr = FrequencyRepeater.new('+1, -1')
      expect(fr.solve).to eql(0)
    end
    it 'solves for +3, +3, +4, -2, -4' do
      fr = FrequencyRepeater.new('+3, +3, +4, -2, -4')
      expect(fr.solve).to eql(10)
    end
    it 'solves for -6, +3, +8, +5, -6' do
      fr = FrequencyRepeater.new('-6, +3, +8, +5, -6')
      expect(fr.solve).to eql(5)
    end
    it 'solves for +7, +7, -2, -7, -4' do
      fr = FrequencyRepeater.new('+7, +7, -2, -7, -4')
      expect(fr.solve).to eql(14)
    end
  end
end
