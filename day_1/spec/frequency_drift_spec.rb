require_relative '../frequency_drift'

describe FrequencyDrift do
  describe 'initialize' do
    it 'accepts a string as input' do
      expect { FrequencyDrift.new }.to raise_error(ArgumentError)
    end
  end
  describe 'solve' do
    it 'solves for +1, -2, +3, +1' do
      fd = FrequencyDrift.new('+1, -2, +3, +1')
      expect(fd.solve).to eql(3)
    end
    it 'solves for +1, +1, +1' do
      fd = FrequencyDrift.new('+1, +1, +1')
      expect(fd.solve).to eql(3)
    end
    it 'solves for +1, +1, -2' do
      fd = FrequencyDrift.new('+1, +1, -2')
      expect(fd.solve).to eql(0)
    end
    it 'solves for -1, -2, -3' do
      fd = FrequencyDrift.new('-1, -2, -3')
      expect(fd.solve).to eql(-6)
    end
  end
end