# coding: utf-8

class Player < Sprite#spriteを継承、同じ機能を持つ
  def update
    self.x += Input.x*2
    self.y += Input.y*2
  end
end