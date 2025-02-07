local Screen = {}

Screen.__index = Screen

function Screen.new()
    local new_screen = {}
    setmetatable(new_screen, Screen)
    return new_screen
end

function Screen:load()
    local tileData = love.graphics.newImage("sprites/tilesheet.png")
    local tileBatch = love.graphics.newSpriteBatch(tileData, 5000)

    
end


return Screen