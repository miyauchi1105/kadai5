# coding: utf-8

class Player < Sprite#sprite���p���A�����@�\������
  def update
    self.x += Input.x*2
    self.y += Input.y*2
  end
end