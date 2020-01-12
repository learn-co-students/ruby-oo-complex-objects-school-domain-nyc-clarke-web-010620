class School
    attr_reader :name 
    attr_accessor :roster 

    def initialize(name)
        @name = name 
        @roster = {}
        @roster = Hash.new{ |h, k| h[k] = [] }
    end 

    def add_student(name, grade)
        @roster[grade] << name   
    end 

    #If you had @roster = {} in initialize, you would write this method for add_student:
    # def add_student(name, grade)
    #     if @roster.include?(grade) == false
    #         @roster[grade] = []
    #     end
    #     @roster[grade] << name
    # end

    def grade(grade) 
        @roster[grade] 
    end

    def sort 
        @roster.each do |grade, name| #another way to write line 29-30: @roster.each {|grade, name| @roster[grade] = name.sort}
            @roster[grade] = name.sort
            @roster 
        end 
    end 
end