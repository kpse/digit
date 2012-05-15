require "#{File.dirname(__FILE__)}/digit_panel"
require "#{File.dirname(__FILE__)}/digit_horizon"
class Digit
  def initialize number
    @num = number
    @num_format = ['14041','03030', '13121', '13131', '04130', '12131', '12141', '13030', '14141', '14131']
    @num_horizon_format = ['373','043', '192', '093', '263', '291', '193', '053', '393', '293']
  end
  
  def print size=1
    num_in_panel.print(size)
  end
  
  def print_horizon size=1
    num_in_horizon.print(size)
  end
  
  private
  
  def num_in_panel
    DigitPanel.new(@num_format[@num])
  end
  
  def num_in_horizon
    DigitPanelHorizon.new(@num_horizon_format[@num])
  end
end

#puts Digit.new(0).print(3)
#puts Digit.new(1).print(3)
#puts Digit.new(2).print(3)
#puts Digit.new(3).print(3)
#puts Digit.new(4).print(3)
#puts Digit.new(5).print(3)
#puts Digit.new(6).print(3)
#puts Digit.new(7).print(3)
#puts Digit.new(8).print(3)
#puts Digit.new(9).print(3)

#puts Digit.new(0).print_horizon(9)
#puts Digit.new(1).print_horizon(9)
#puts Digit.new(2).print_horizon(9)
#puts Digit.new(3).print_horizon(9)
#puts Digit.new(4).print_horizon(9)
#puts Digit.new(5).print_horizon(9)
#puts Digit.new(6).print_horizon(9)
#puts Digit.new(7).print_horizon(9)
#puts Digit.new(8).print_horizon(9)
#puts Digit.new(9).print_horizon(9)