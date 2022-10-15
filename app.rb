require './person'
require './get_data'
require './report'

class App 
    attr_accessor :people
    def initialize
        @data=[]
        @people=[]
    end 
    
    def get_data(file_name)
        @data=Data.new.read_txt("./files/#{file_name}")    
    end

    def create_person
        @data.each do |element|
            person_schedule=element.split("=")
            schedule=person_schedule[1].split(",")
            @people<<Person.new(person_schedule[0], schedule)
        end
        @people
    end

    def create_report
        @people.each_with_index do |element, index|
           (index+1).upto(@people.length-1) do |upto_index| 
            report=Report.new
            report_counter=report.common_hours(element.work_hours, @people[upto_index].work_hours)
            p (element.name + "-" + @people[upto_index].name + ": " + report_counter.to_s)   
         end
            
        end
    end
end