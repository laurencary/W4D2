require_relative "employee"
class Manager < Employee
    attr_accessor :direct_reports
    def initialize(name, title, salary, boss)
        super
        @direct_reports = []
    end
    def bonus(multiplier)
        total_bonus = 0
        @direct_reports.each do |employee|
            total_bonus += employee.salary * multiplier
            if employee.class == Manager
                total_bonus += employee.bonus(multiplier)
            end
        end
        total_bonus
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