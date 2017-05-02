class Employee
  Engineer = 0
  Salesman = 1
  Manager = 2

  attr_reader :type

  def initialize(type)
    @type = type
  end

  def create(type)
    case type
    when Engineer
      Engineer.new
    when Salesman
      Salesman.new
    when Manager
      Manager.new
    else
      raise
    end
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

class Engineer < Employee
  attr_reader :type

  def initialize
    @type = 0
  end

  def pay_amount
    monthly_salary
  end
end

class Salesman < Employee
  attr_reader :type

  def initialize
    @type = 1
  end

  def pay_amount
    monthly_salary + commission
  end
end

class Manager < Employee
  attr_reader :type

  def initialize
    @type = 2
  end

  def pay_amount
    monthly salary + bonus
  end
end
