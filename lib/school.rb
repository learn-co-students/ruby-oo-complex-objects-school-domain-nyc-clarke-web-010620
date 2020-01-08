# code here
class School
    attr_accessor :grade, :roster, :name, :grade

    def initialize(provided_name)
        @name = provided_name
        @roster = {}
    end

    def add_student(student_name, student_grade)
        if @roster[student_grade] == nil
            @roster[student_grade] = [student_name]
        else 
            @roster[student_grade].push(student_name)
        end

    end
    
    def grade(desired_grade)
        @roster[desired_grade]
    end

    def sort
        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
    end

end
