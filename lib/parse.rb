class Parse

  attr_reader :webpages, :url_array, :page_views

  def initialize
    @webpages = []
    @url_array = []
    @page_views = Hash.new(0)
    @unique_views = Hash.new(0)

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
    @url_array = new_array.map { |item| item[0] }
    @url_array.each { |url| @page_views[url] += 1 }
    ordered = @page_views.sort_by { |key, value| value }.reverse
    return ordered
  end

  def sort_by_unique_view
    new_array = @webpages.map { |i| i.split(' ') }
    unique = new_array.uniq
    unique = unique.map { |item| item[0] }
    unique.each { |url| @unique_views[url] += 1 }
    ordered_ips = @unique_views.sort_by { |key, value| value }.reverse
    return ordered_ips
  end
end
