require "test/unit"
require "#{File.dirname(__FILE__)}/../code/digit"
require "#{File.dirname(__FILE__)}/../code/digit_panel"

 
class TestSimpleNumber < Test::Unit::TestCase
 
  def test_1
    assert_equal("\n   |\n   |\n\n   |\n   |\n\n", Digit.new(1).print)
  end
  
  def test_2
    assert_equal("----\n   |\n   |\n----\n|\n|\n----\n", Digit.new(2).print)
  end
  
  def test_3
    assert_equal("----\n   |\n   |\n----\n   |\n   |\n----\n", Digit.new(3).print)
  end
  
  def test_digit_panel
    assert_equal("----\n\n\n\n\n", Digit_panel.new("10000").print)

    assert_equal("\n|\n|\n\n\n\n", Digit_panel.new("02000").print)

    assert_equal("----\n""   |\n   |\n""\n\n\n", Digit_panel.new("13000").print)    
    assert_equal("\n|  |\n|  |\n\n\n\n", Digit_panel.new("04000").print)    
    assert_equal("\n\n\n\n----\n", Digit_panel.new("00001").print)    
  end
 
  def test_digit_panel_compose
    assert_equal("----\n|  |\n|  |\n\n|  |\n|  |\n----\n", Digit_panel.new("14041").print)
    assert_equal("\n   |\n   |\n\n   |\n   |\n\n", Digit_panel.new("03030").print)
    assert_equal("----\n   |\n   |\n----\n|\n|\n----\n", Digit_panel.new("13121").print)
    assert_equal("----\n   |\n   |\n----\n   |\n   |\n----\n", Digit_panel.new("13131").print)
    assert_equal("\n|  |\n|  |\n----\n   |\n   |\n\n", Digit_panel.new("04130").print)
    assert_equal("----\n|\n|\n----\n   |\n   |\n----\n", Digit_panel.new("12131").print)
    assert_equal("----\n|\n|\n----\n|  |\n|  |\n----\n", Digit_panel.new("12141").print)
    assert_equal("----\n   |\n   |\n\n   |\n   |\n\n", Digit_panel.new("13030").print)
    assert_equal("----\n|  |\n|  |\n----\n|  |\n|  |\n----\n", Digit_panel.new("14141").print)
    assert_equal("----\n|  |\n|  |\n----\n   |\n   |\n----\n", Digit_panel.new("14131").print)
  end
  
  def test_double
    assert_equal("--------\n|      |\n|      |\n|      |\n|      |\n\n|      |\n|      |\n|      |\n|      |\n--------\n", Digit.new(0).print(2))
  end
end