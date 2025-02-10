local Player = require("player")
local player = Player.new()

local Screen = require("screen")
local screen = Screen.new()

local screenBatch

function love.load()
  local width, height = love.graphics.getDimensions()
  player.x = (width / 2.0) - 15.0
  player.y = (height / 2.0) - 15.0
  screenBatch = screen:load()
end

function love.update(dt)
  if love.keyboard.isScancodeDown("escape") then
    love.event.quit()
  end
  if love.keyboard.isScancodeDown("w") then
    player.y = player.y - (player.speed * dt)
  end
  if love.keyboard.isScancodeDown("s") then
    player.y = player.y + (player.speed * dt)
  end
  if love.keyboard.isScancodeDown("a") then
    player.x = player.x - (player.speed * dt)
  end
  if love.keyboard.isScancodeDown("d") then
    player.x = player.x + (player.speed * dt)
  end
end

function love.draw()
  love.graphics.draw(screenBatch)
  love.graphics.circle("line", player.x, player.y, 10)
  love.graphics.print("pos\nx: " .. math.ceil(player.x) .. "\ny: " .. math.ceil(player.y), 50, 50)
end
