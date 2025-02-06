--stylua: ignore
local Tilemap = {
	coords = {
		0,0,0,0,
		0,1,1,0,
		0,1,1,0,
		0,0,0,0
	},
}

Tilemap.__index = Tilemap

function Tilemap.new()
  local new_tilemap = {}
  setmetatable(new_tilemap, Tilemap)
  return new_tilemap
end

function Tilemap.load()
  local imgData = love.image.newImageData("sprites/tileset.png")
  image = love.graphics.newArrayImage(imgData)
end

function Tilemap:draw()
  for _, x in pairs(self.coords) do
    if x == 1 then
      print("ground")
    else
      print("water")
    end
  end
end

return Tilemap
