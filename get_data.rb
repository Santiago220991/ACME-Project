class Data
  def read_txt(file)
    data = []
    File.open(file).each do |line|
      data << line.chomp
    end
    data
  end
end
