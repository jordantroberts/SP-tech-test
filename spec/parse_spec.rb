require 'parse'

describe Parse do

  describe '#parser' do
    it 'prints contents of log file' do
      expect(subject.parser('./webserver.log')).to eq File.read('./webserver.log')
    end
  end

end
