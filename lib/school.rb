# code here!
class School
    def initialize (roster)
        @roster = {}
    end
    def add_student (student, grade)
        if !@roster[grade]
            @roster[grade] = []
            @roster[grade] << student
        else
            @roster[grade] << student
        end 
    end
    def roster
        @roster
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.each do |k, v|
            @roster[k] = v.sort
        end
    end
end