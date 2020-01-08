# code here!
class School

    attr_accessor :school_name, :roster

    def initialize (name)
        @school_name = name
        @roster = {}

    end

    def add_student (name, grade)

        if !@roster[grade]
            @roster[grade] = []        
            @roster[grade] << name

        else
            @roster[grade] << name
        end

    end

    def grade(grade)

        @roster[grade]
    
    end

    def sort

        sort = {}
        
        @roster.each do |grade, students|
            sort[grade] = students.sort
        end

        sort
    end
end