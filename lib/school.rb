# code here!# code here!

class School
    attr_accessor :roster, :school

    def initialize (school)
        @school = school
        @roster = {}
    end

    def add_student(students, num)
        if !@roster[num]
            @roster[num] = []
        end
        @roster[num] << students
        
    end

    def grade(input)
        @roster[input]
    end

    def sort
        @roster.each do |k,v|
            @roster[k] = v.sort
        end
    end

end