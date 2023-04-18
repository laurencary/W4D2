require_relative "manager.rb"

class Employee
    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name, @title, @salary, @boss = name, title, salary, boss
    end

    def bonus(multiplier)
        @salary * multiplier
    end

end

ned = Manager.new("Ned", "Founder", 1000000,nil)
darren = Manager.new("darren", "TA Manager", 78000,ned)
shawna = Employee.new("Shawna", "TA", 12000,darren)
david = Employee.new("David", "TA", 10000,darren)

ned.direct_reports = [darren]
darren.direct_reports = [shawna,david]

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000