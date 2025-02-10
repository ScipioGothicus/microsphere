local Screen = {
  tiles = {},
}

local pretendMap = {
  { 0, 1, 0, 0 },
  { 0, 1, 1, 1 },
  { 0, 2, 1, 2 },
  { 1, 0, 0, 0 },
}

Screen.__index = Screen

function Screen.new()
  local new_screen = {}
  setmetatable(new_screen, Screen)
  return new_screen
end

function Screen:load()
  local tileData = love.graphics.newImage("sprites/tilesheet.png")
  local tileBatch = love.graphics.newSpriteBatch(tileData, 5000)
  self.tiles["grassTile"] = love.graphics.newQuad(0, 0, 8, 8, tileData)
  self.tiles["dirtTile"] = love.graphics.newQuad(8, 0, 8, 8, tileData)
  self.tiles["treeTile"] = love.graphics.newQuad(16, 0, 8, 8, tileData)
  for 
  	for c=0
  end
  end

  tileBatch:add(self.tiles["grassTile"], 32, 32)
  return tileBatch
end

return Screen
