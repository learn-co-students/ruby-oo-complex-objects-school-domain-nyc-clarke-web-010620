# code here!

class School

    # attr_writer :roster
    attr_accessor :roster, :name

    def initialize(roster)
        @name = name
        @roster = {}

    end 

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(kids_grade)
        roster[kids_grade]

    end

    def sort
        hash = {}
        roster.each do |grade, students|
            hash[grade] = students.sort
        end
        hash
    end

end