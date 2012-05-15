require "#{File.dirname(__FILE__)}/const"

class DigitPanel
  
class NoStroke
  def multi size
    "\n"
  end
end

class LeftStroke
  def multi size
    "#{POINT}\n"*(STROKE_HEIGHT*size)
  end
end

class RightStroke
  def multi size
    (" "*(STROKE_WIDTH*size-1) + "#{POINT}\n")*(STROKE_HEIGHT*size)
  end
end

class DashStroke
  def multi size
    "#{DASH_POINT}"*(STROKE_WIDTH*size) + "\n"
  end
end

class DoubleStroke
  def multi size
    ("#{POINT}" + " "*(STROKE_WIDTH*size-2) + "#{POINT}\n")*(STROKE_HEIGHT*size)
  end
end


  def initialize state
    @state = state
    @strokes = [NoStroke.new, DashStroke.new, LeftStroke.new, RightStroke.new, DoubleStroke.new]
  end
  
  def print size=1
    @state.chars.inject("") do |panel, strokes|
      panel += @strokes[strokes.to_i].multi(size)
    end
  end 
  
  def reverse
    DigitPanel.new(@state.reverse)
  end
  
end