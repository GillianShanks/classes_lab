require("Minitest/autorun")
require("Minitest/rg")
require_relative("../student_class.rb")

class TestStudentClass < MiniTest::Test

  def setup()
    @student1 = Student.new("Gillian", "G14")
  end

  def test_get_student_name()
    assert_equal("Gillian", @student1.name)
  end

  def test_get_student_cohort()
    assert_equal("G14", @student1.cohort)
  end

end
