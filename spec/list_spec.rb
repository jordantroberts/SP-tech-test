require 'list'

describe List do

  let(:list) {described_class.new}
  array = [["/home", 2], ["/contact", 2]]

  describe '#list_views' do
    it 'formats array to print out list of how many times a web page was viewed' do
      expect{subject.list_views(array)}.to output("/home was visited 2 times\n/contact was visited 2 times\n").to_stdout
    end
  end

  describe '#unique_list_views' do
    it 'formats array to print out list of how many times a web page was viewed by individual ip address' do
      expect{subject.list_views(array)}.to output("/home was visited 2 times\n/contact was visited 2 times\n").to_stdout
    end
  end
end
