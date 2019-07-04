require_relative 'list'

class Parse

  attr_reader :webpages, :url_array, :page_views, :ordered_by_ips, :ordered_by_views

  def initialize
    @webpages = []
    @url_array = []
    @page_views = Hash.new(0)
    @unique_views = Hash.new(0)
    @ordered_by_ips = []
    @ordered_by_views = []
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
    @ordered_by_views = @page_views.sort_by { |key, value| value }.reverse
    return @ordered_by_views
  end

  def sort_by_unique_view
    new_array = @webpages.map { |i| i.split(' ') }
    unique = new_array.uniq
    unique = unique.map { |item| item[0] }
    unique.each { |url| @unique_views[url] += 1 }
    @ordered_by_ips = @unique_views.sort_by { |key, value| value }.reverse
    return @ordered_by_ips
  end

  def see_views
    list = List.new
    list.list_views(@ordered_by_views)
  end

  def see_unique_views
    list = List.new
    list.list_unique_views(@ordered_by_ips)
  end
end
