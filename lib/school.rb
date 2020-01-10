# code here!
class School
   
    attr_reader :roster
    def initialize (name)
        @name = name
         @roster = {}
         
    end

   def add_student (name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
   end


   def grade(students_grade)
   @roster[students_grade]
   end

   def sort
    sorted = {}
    @roster.map do |grade,name|
        sorted[grade] = name.sort
    end
    sorted
 end
end



    
    
   
   
#hash will have keys of grade levels 
#keys= grade
#values= levels such as numbers 

# add student to the school with arguments of name and grade !


