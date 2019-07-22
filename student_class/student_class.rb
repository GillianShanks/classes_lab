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

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def speak()
    return "I like coding!" if @name == "Gillian"
  end

end
