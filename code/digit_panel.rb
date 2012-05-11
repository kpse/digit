STROKE_WIDTH = 4
STROKE_HEIGHT = 2
class NoStroke
  def multi size
    "\n"
  end
end

class LeftStroke
  def multi size
    "|\n"*(STROKE_HEIGHT*size)
  end
end

class RightStroke
  def multi size
    (" "*(STROKE_WIDTH*size-1) + "|\n")*(STROKE_HEIGHT*size)
  end
end

class DashStroke
  def multi size
    "-"*(STROKE_WIDTH*size) + "\n"
  end
end

class DoubleStroke
  def multi size
    ("|" + " "*(STROKE_WIDTH*size-2) + "|\n")*(STROKE_HEIGHT*size)
  end
end

class Digit_panel
  def initialize state
    @state = state
    @strokes = [NoStroke.new, DashStroke.new, LeftStroke.new, RightStroke.new, DoubleStroke.new]
  end
  def print size=1
    @state.chars.inject("") do |panel, strokes|
      panel += @strokes[strokes.to_i].multi(size)
    end
  end
end

