require "test/unit"
require "#{File.dirname(__FILE__)}/../code/digit"
require "#{File.dirname(__FILE__)}/../code/digit_panel"
require "#{File.dirname(__FILE__)}/../code/digit_horizon"

 
class TestSimpleNumber < Test::Unit::TestCase
 
  def test_1
    assert_equal("\n   @\n   @\n\n   @\n   @\n\n", Digit.new(1).print)
  end
  
  def test_2
    assert_equal("@@@@\n   @\n   @\n@@@@\n@\n@\n@@@@\n", Digit.new(2).print)
  end
  
  def test_3
    assert_equal("@@@@\n   @\n   @\n@@@@\n   @\n   @\n@@@@\n", Digit.new(3).print)
  end
  
  def test_digit_panel
    assert_equal("@@@@\n\n\n\n\n", DigitPanel.new("10000").print)

    assert_equal("\n@\n@\n\n\n\n", DigitPanel.new("02000").print)

    assert_equal("@@@@\n""   @\n   @\n""\n\n\n", DigitPanel.new("13000").print)    
    assert_equal("\n@  @\n@  @\n\n\n\n", DigitPanel.new("04000").print)    
    assert_equal("\n\n\n\n@@@@\n", DigitPanel.new("00001").print)    
  end
 
  def test_digit_panel_compose
    assert_equal("@@@@\n@  @\n@  @\n\n@  @\n@  @\n@@@@\n", DigitPanel.new("14041").print)
    assert_equal("\n   @\n   @\n\n   @\n   @\n\n", DigitPanel.new("03030").print)
    assert_equal("@@@@\n   @\n   @\n@@@@\n@\n@\n@@@@\n", DigitPanel.new("13121").print)
    assert_equal("@@@@\n   @\n   @\n@@@@\n   @\n   @\n@@@@\n", DigitPanel.new("13131").print)
    assert_equal("\n@  @\n@  @\n@@@@\n   @\n   @\n\n", DigitPanel.new("04130").print)
    assert_equal("@@@@\n@\n@\n@@@@\n   @\n   @\n@@@@\n", DigitPanel.new("12131").print)
    assert_equal("@@@@\n@\n@\n@@@@\n@  @\n@  @\n@@@@\n", DigitPanel.new("12141").print)
    assert_equal("@@@@\n   @\n   @\n\n   @\n   @\n\n", DigitPanel.new("13030").print)
    assert_equal("@@@@\n@  @\n@  @\n@@@@\n@  @\n@  @\n@@@@\n", DigitPanel.new("14141").print)
    assert_equal("@@@@\n@  @\n@  @\n@@@@\n   @\n   @\n@@@@\n", DigitPanel.new("14131").print)
  end
  
  def test_double
    assert_equal("@@@@@@@@\n@      @\n@      @\n@      @\n@      @\n\n@      @\n@      @\n@      @\n@      @\n@@@@@@@@\n", Digit.new(0).print(2))
  end
  
  def test_rotate_right
    assert_equal("@@@@@@@@@\n""@       @\n""@       @\n""@@@@@@@@@\n", DigitPanelHorizon.new("373").print)
    assert_equal("\n""\n""\n""@@@@@@@@@\n", DigitPanelHorizon.new("043").print)
    assert_equal("@@@@@\n""@   @   @\n""@   @   @\n""    @@@@@\n", DigitPanelHorizon.new("192").print)
    assert_equal("\n""@   @   @\n""@   @   @\n""@@@@@@@@@\n", DigitPanelHorizon.new("093").print)
    assert_equal("    @@@@@\n""    @\n""    @\n""@@@@@@@@@\n", DigitPanelHorizon.new("263").print)
    assert_equal("    @@@@@\n""@   @   @\n""@   @   @\n""@@@@@\n", DigitPanelHorizon.new("291").print)
    assert_equal("@@@@@\n""@   @   @\n""@   @   @\n""@@@@@@@@@\n", DigitPanelHorizon.new("193").print)
    assert_equal("\n""        @\n""        @\n""@@@@@@@@@\n", DigitPanelHorizon.new("053").print)
    assert_equal("@@@@@@@@@\n""@   @   @\n""@   @   @\n""@@@@@@@@@\n", DigitPanelHorizon.new("393").print)
    assert_equal("    @@@@@\n""@   @   @\n""@   @   @\n""@@@@@@@@@\n", DigitPanelHorizon.new("293").print)
  end
end