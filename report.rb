require 'date'
require './modules/date_functions'
require './modules/time_frame_functions'

class Report
  include DateFunctions
  include TimeFrameFunctions

  def common_hours(arr1, arr2)
    counter = 0

    arr1.each do |time|
      day = time[0..1]
      selected_day = (arr2.filter { |element| element.include?(day) })[0]

      next unless selected_day

      first_person_start_hour = starting_hour(time)
      first_person_end_hour = ending_hour(time)
      second_person_start_hour = starting_hour(selected_day)
      second_person_end_hour = ending_hour(selected_day)
      counter += comparision_time_frame(first_person_start_hour, first_person_end_hour,
                                        second_person_start_hour, second_person_end_hour)
    end
    counter
  end
end
