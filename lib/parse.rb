class Parse

  attr_reader :webpages, :url_array, :page_views

  def initialize
    @webpages = []
    @url_array = []
    @page_views = Hash.new(0)

  end

  def parser(file)
    file_contents = ""
    File.foreach(file) do |line|
      @webpages << line
      file_contents += line
    end
    return file_contents
  end

  def sort_by_page_view
    new_array = @webpages.map { |i| i.split(' ') }
    @urlarray = new_array.map { |item| item[0] }
    @urlarray.each { |url| @page_views[url] += 1 }
    ordered = @page_views.sort_by { |key, value| value }.reverse
    return ordered
  end
end
