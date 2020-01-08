# code here!
class School 
    def initialize(name,roster={})
        @name = name
        @roster = roster
    end 

    def name
        @name
    end 

    def roster
        @roster
    end
    
    def add_student(name, grade)
        @name = name
        @grade = grade
    end 

    new_array = []

    new_array << add_student


end 