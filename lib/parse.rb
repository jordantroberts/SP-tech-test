class Parse

  def parser(file)
    file_contents = ""
    File.foreach(file) do |line|
      file_contents += line
    end
    return file_contents
  end

end
