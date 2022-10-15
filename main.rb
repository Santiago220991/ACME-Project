require './app'

def main
    puts ""
    puts "----------------"
    puts "ACME COMPANY"
    puts "----------------"
    puts ""
    option=1
    while(option>0)
    puts ""
    puts "Please select a File"
    puts files=Dir.entries('files') - %w[. ..]
    puts ""
    puts "Type 0 to Exit"
    puts ""
    file_name=gets.chomp
    if(files.include?(file_name)) 
        session=App.new
        session.get_data(file_name)
        session.create_person
        session.create_report
    elsif (file_name==="0") 
        option=0    
    else puts "Invalid File"
    end
end
puts "Thanks for using the app"
end

main