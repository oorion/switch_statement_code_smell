class Employee
  Engineer = 0
  Salesman = 1
  Manager = 2

  attr_reader :type

  def initialize(type)
    @type = type
  end

  def pay_amount
    case type
    when Engineer
      monthly_salary
    when Salesman
      monthly_salary + commission
    when Manager
      monthly salary + bonus
    end
  end

  def create(type)
    Employee.new(type)
  end

  private

  def monthly_salary
    10
  end

  def commission
    4
  end

  def bonus
    2
  end
end
