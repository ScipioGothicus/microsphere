local Player = {
   x = 0,
   y = 0,
   speed = 150,
   health = 10.0,
}

Player.__index = Player

function Player.new()
   local new_player = {}
   setmetatable(new_player, Player)
   return new_player
end

return Player
