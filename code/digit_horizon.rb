require "#{File.dirname(__FILE__)}/const"

class DigitPanelHorizon
  
class NoStroke
  def multi size
    "\n"
  end
end

class RightStroke
  def multi size
    (" "*(STROKE_WIDTH*2*size) + "#{POINT}\n")*(STROKE_HEIGHT*size)
  end
end

class MiddleStroke
  def multi size
    (" "*(STROKE_WIDTH*size) + "#{POINT}\n")*(STROKE_HEIGHT*size)
  end
end

class TripleStroke
  def multi size
    ("#{POINT}" + " "*(STROKE_WIDTH*size-1) + "#{POINT}" + " "*(STROKE_WIDTH*size-1) + "#{POINT}" + "\n")*(STROKE_HEIGHT*size)
  end
end

class LeftRightStroke
  def multi size
    ("#{POINT}" + " "*(STROKE_WIDTH*2*size-1) + "#{POINT}" + "\n")*(STROKE_HEIGHT*size)
  end
end

class RightMiddleStroke
  def multi size
    (" "*(STROKE_WIDTH*size-1) + "#{POINT}" + " "*(STROKE_WIDTH*size-1) + "#{POINT}" + "\n")*(STROKE_HEIGHT*size)
  end
end

class LeftDashStroke
  def multi size
    "#{DASH_POINT}"*(STROKE_WIDTH*size) + "#{DASH_POINT}\n"
  end
end

class RightDashStroke
  def multi size
    " "*(STROKE_WIDTH*size) + "#{DASH_POINT}" + "#{DASH_POINT}"*(STROKE_WIDTH*size) + "\n"
  end
end

class DoubleDashStroke
  def multi size
    "#{DASH_POINT}"*(STROKE_WIDTH*size) + "#{DASH_POINT}" + "#{DASH_POINT}"*(STROKE_WIDTH*size) + "\n"
  end
end

class NoDashStroke
  def multi size
    "\n"*(STROKE_HEIGHT*size)
  end
end

  def initialize state
    @state = state
    @strokes = [NoStroke.new, LeftDashStroke.new, RightDashStroke.new, DoubleDashStroke.new, 
      NoDashStroke.new, RightStroke.new, MiddleStroke.new, LeftRightStroke.new, RightMiddleStroke.new, TripleStroke.new]
  end
  
  def print size=1
    @state.chars.inject("") do |panel, strokes|
      panel += @strokes[strokes.to_i].multi(size)
    end
  end
  
  def reverse
    DigitPanelHorizon.new(@state.reverse)
  end
  
  def rotate step=1
    DigitPanelHorizon.new(@state.chars.to_a.rotate(step).join)
  end
end

