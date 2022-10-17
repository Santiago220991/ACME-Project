module DateFunctions
  def starting_hour(date)
    DateTime.parse(date[2..6])
  end

  def ending_hour(date)
    DateTime.parse(date[8..12])
  end
end
