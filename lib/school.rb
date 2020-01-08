require 'pry'
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name 
        @roster = {}
    end


    def add_student(name,grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        array = {}
        @roster.each do |key,value|
            array[key] = value.sort
        end
        array
    end

   
end
    
