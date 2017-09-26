# coding: utf-8

class Player < Sprite#sprite‚ðŒp³A“¯‚¶‹@”\‚ðŽ‚Â
  def update
    self.x += Input.x*2
    self.y += Input.y*2
  end
end