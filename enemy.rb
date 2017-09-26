# coding: utf-8

class Enemy < Sprite
  def initialize(x,y,img)
    super

    @houkou=1
  end

  def update#動き更新
    self.y +=@houkou*1#少しずつ下に落ちる
    if self.y >= Window.height - self.image.height#下につくと消滅
      self.vanish
    end
  end

  # 他のオブジェクトから衝突された際に呼ばれるメソッド
  def hit(obj)
    @houkou=-1
    
    enemy_img = Image.load("1.png")
    self.image = enemy_img

  end
end

