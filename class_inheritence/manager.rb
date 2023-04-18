require_relative "employee.rb"

class Manager < Employee
    attr_accessor :direct_reports
    def initialize(name, title, salary, boss)
        super
        @direct_reports = []
    end

    def bonus(multipler)
        total_bonus = 0
        @direct_reports.each do |employee|
            total_bonus += employee.salary * multiplier
        end
        total_bonus
    end

end