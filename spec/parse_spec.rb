require 'parse'

describe Parse do

  describe '#parser' do
    it 'parses contents of log file' do
      expect(subject.parser('./testserver.log')).to eq File.read('./testserver.log')
    end
  end

  describe 'sort_by_page_view' do
    it 'sorts webpages into order of page views' do
      subject.parser('./testserver.log')
      expect(subject.sort_by_page_view).to eq([["/home", 3], ["/about/2", 2], ["/about", 1], ["/contact", 1]])
    end
  end

end
