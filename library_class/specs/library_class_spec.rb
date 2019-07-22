require("minitest/autorun")
require("minitest/rg")
require_relative("../library_class.rb")

class TestLibrary < MiniTest::Test
  def setup()
    book_list =
    [
      {title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          due_date: "01/12/16"
        }
      },
      {
        title: "the_hobbit",
        rental_details: {
          student_name: "Bert",
          due_date: "02/12/16"
        }
      }
    ]
    @library = Library.new(book_list)
  end

  def test_get_books()
    assert_equal(2, @library.books.count)
  end

  def test_get_book_info()
    assert_equal(2, @library.get_book_info("lord_of_the_rings").count)
  end

  def test_get_book_rental_info()
    rental_info = @library.book_rental_info("lord_of_the_rings")
    assert_equal("Jeff", rental_info[:student_name])
  end

  def test_add_new_book()
    @library.add_new_book("sherlock_holmes")
    assert_equal(3, @library.books.count)
  end

  def test_set_rental_info()
    @library.set_rental_info("the_hobbit", "Graham", "3/12/16")
    book_info = @library.get_book_info("the_hobbit")
    assert_equal("Graham", book_info[:rental_details][:student_name])
  end

end
