require "#{File.dirname(__FILE__)}/digit_panel"
class Digit
  def initialize number
    @num = number
    @num_format = ['14041','03030', '13121', '13131', '04130', '12131', '12141', '13030', '14141', '14131']
  end
  
  def print size=1
    Digit_panel.new(@num_format[@num]).print(size)
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