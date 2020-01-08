class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade].class != Array
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end

    def grade(num)
        @roster[num]
    end

    def sort
        sorted = {}
        @roster.each do |key, value|
            sorted[key] = value.sort
        end
        sorted

    end


end
