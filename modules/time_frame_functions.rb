module TimeFrameFunctions
  def comparision_time_frame(first_person_start_hour, first_person_end_hour,
                             second_person_start_hour, second_person_end_hour)
    if first_person_start_hour.between?(second_person_start_hour, second_person_end_hour) ||
       first_person_end_hour.between?(second_person_start_hour, second_person_end_hour) ||
       second_person_start_hour.between?(first_person_start_hour, first_person_end_hour) ||
       second_person_end_hour.between?(first_person_start_hour, first_person_end_hour)
      return 1
    end
    0
  end
end
