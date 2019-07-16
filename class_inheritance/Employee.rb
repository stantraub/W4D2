class Employee
  attr_reader :name, :title, :salary, :boss
  
  def initialize(name, title, salary, boss)
    @name, @title, @salary, @boss = name, title, salary, boss
  end

  def bonus(multiplier)
    self.salary * multiplier
  end
end