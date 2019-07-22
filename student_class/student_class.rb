class Student
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  #getter
  def name()
    return @name
  end

  def cohort()
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

end
