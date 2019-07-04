require_relative 'parse'

class List

  def list_views(array)
    array.map { |url, views| puts url + " was visited #{views} times" }
  end

  def list_unique_views(array)
    array.map { |url, views| puts url + " was visited #{views} unique times" }
  end
  
end
