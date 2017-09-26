# coding: utf-8
require 'dxruby'

require_relative 'player'
require_relative 'enemy'

Window.width  = 800
Window.height = 600

player_img = Image.load("3.png")
player_img.setColorKey([255, 255, 255])

enemy_img = Image.load("2.png")
enemy_img.setColorKey([255, 255, 255])

player = Player.new(400, 500, player_img)

enemies = []
100.times do
  enemies << Enemy.new(rand(800), rand(600), enemy_img)#<<の左に右辺が１０回はいる(配列)、randは１～数の乱数
end

Window.loop do
  break if Input.keyPush?(K_ESCAPE)

  Sprite.update(enemies)
  Sprite.draw(enemies)


  player.update
  player.draw
  

  # 当たり判定
  Sprite.check(player, enemies)
end