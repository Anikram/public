local GameActor = {}
GameActor.__index = GameActor

function GameActor.new(x, y)
	local o = {
		x = x,
		y = y
	}

	setmetatable(o, GameActor)
	return o
end

function GameActor:update(dt)
end

function GameActor:draw()
	love.graphics.setColor(255, 255, 255, 125)
	love.graphics.circle("fill", self.x, self.y, 16)
	love.graphics.setColor(255, 255, 255, 255)
end

return GameActor