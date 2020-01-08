# code here!
require 'pry'
class School
    attr_accessor :roster 
    attr_reader :name
    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(name, grade)
        if !@roster[grade] 
            @roster[grade] = []
        end
        @roster[grade] << name
        @roster[grade].sort
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.each {|grade, name| @roster[grade] = name.sort}
        @roster
    end


end

school = School.new("Bayside High School")
school.roster
school.add_student("Zach", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.add_student("Tom", 9)
school.add_student("Homer Simpson", 9)
school.add_student("Bart Simpson", 9)
school.add_student("Avi Flombaum", 10)
school.add_student("Jeff Baird", 10)
school.add_student("Blake Johnson", 7)
school.add_student("Jack Bauer", 7)
school.roster
# binding.pry