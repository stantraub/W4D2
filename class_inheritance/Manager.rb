require_relative 'Employee.rb'

class Manager < Employee
  attr_accessor :employees, :title, :salary, :boss
  
  def initialize(name, title, salary, boss)
    super
    @employees = []
  end

  def bonus(multiplier)
    bonus = 0
    @employees.each do |employee|
      bonus += employee.salary 
    end

    bonus * multiplier
  end

end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, "Ned")
shawna = Employee.new("Shawna", "TA", 12000, "Darren")
david = Employee.new("David", "TA", 10000, "Darren")

ned.employees << darren
ned.employees << shawna
ned.employees << david
darren.employees << david
darren.employees << shawna

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000