require_relative 'list'

class Parse
  attr_reader :log, :views, :IP_address

  def initialize
    @log = []
    @views = []
    @ip_address = []
  end

  def parser(file)
    File.foreach(file) { |line| @log << line }
    @log = @log.map { |i| i.split(' ') }
    @log
  end

  def sort_by_page_view
    page_views = Hash.new(0)
    url_array = @log.map { |item| item[0] }
    url_array.each { |url| page_views[url] += 1 }
    @views = page_views.sort_by { |_page, views| views }.reverse
    @views
  end

  def sort_by_unique_view
    unique_views = Hash.new(0)
    removed_duplicates = @log.uniq.map { |item| item[0] }
    removed_duplicates.each { |url| unique_views[url] += 1 }
    @ip_address = unique_views.sort_by { |_page, views| views }.reverse
    @ip_address
  end

  def see_views
    list = List.new
    list.list_views(@views)
  end

  def see_unique_views
    list = List.new
    list.list_unique_views(@ip_address)
  end
end
