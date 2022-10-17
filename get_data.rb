class Data
  def read_txt(file)
    @raw_data = []
    @data = []

    File.open(file).each do |line|
      @raw_data << line.chomp
    end

    @raw_data.each do |element|
      person_schedule = element.split('=')
      name = person_schedule[0]
      schedule = person_schedule[1].split(',')
      @data << { name: name, schedule: schedule }
    end
    @data
  end
end
