class School
    def initialize (name)
    @name = name     
    @roster = {}
    end 
 
    attr_accessor :name, :roster, :grade

    def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
    end 

    def grade (grade)
    roster[grade]    
    end 

    def sort 
        sorted_roster = {}
        roster.each do |grade,students|
            sorted_roster[grade] = students.sort   
        end 
        sorted_roster
        end 

        # def sort
        #     sorted = {}
        #     roster.each do |grade, students|
        #       sorted[grade] = students.sort
        #     end
        #     sorted
        #   end
end 