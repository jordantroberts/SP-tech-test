require 'list'

describe List do
  let(:list) { described_class.new }
  array = [['/home', 2], ['/contact', 2]]

  describe '#list_views' do
    it 'prints out list of how many times a web page was viewed' do
      expect { subject.list_views(array) }.to output("/home was visited 2 times\n/contact was visited 2 times\n").to_stdout
    end
  end

  describe '#unique_list_views' do
    it 'prints out list of how many times a web page was viewed uniquely' do
      expect { subject.list_unique_views(array) }.to output("/home was visited 2 unique times\n/contact was visited 2 unique times\n").to_stdout
    end
  end
end
