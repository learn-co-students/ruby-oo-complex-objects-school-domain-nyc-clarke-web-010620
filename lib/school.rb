require "pry"
class School

  
  
  def initialize(roster)
    @roster = {}
    
  end 
  
  attr_accessor :roster, :name 
  
  

  
  def add_student(name, grade)
    if roster[grade] 
      roster[grade] << name
    else 
      roster[grade] = []
      roster[grade] << name
    end 
  end
  
  
  def grade(s_grade)
    roster[s_grade]
  end 
  
  def sort 

    # binding.pry
    new_hash = {}
    roster.each do |key, value| 
      new_hash[key] = value.sort 
    end 
     
    return new_hash
  end 
  
  
end  