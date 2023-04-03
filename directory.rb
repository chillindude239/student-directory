
#This code puts all the students into an array

 def input_students
     puts "Please enter the names of the students"
     puts "To finish, just hit return twice"
     
     students = []
     
     name = gets.chomp
     while !name.empty? do
         if name[0] == "J"
         students << {name: name, cohort: :november}
         puts "Now we have #{students.count} students"
        else
            puts "Enter a name that starts with J!"
        end
        name = gets.chomp
    end
    
    students
    
end



 def print_header
 puts "The students of Villains Academy"
 puts "-------------"
end

def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
    
 
def print_footer(students)
puts "Overall we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)