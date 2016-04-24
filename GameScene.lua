local Scene = require "Scene"
local GameActor = require "GameActor"

local GameScene = {}
GameScene.__index = GameScene

function GameScene.new()
	local o = {
		entities = {}
	}
	setmetatable(o, GameScene)

	o:init()
	return o
end


function GameScene:init()
end

function GameScene:update(dt)
	for _, v in ipairs(self.entities) do
		v:update(dt)
	end

	if love.mouse.isDown(1) then
		self:add(GameActor.new(love.mouse.getX(), love.mouse.getY()))
	end
end

function GameScene:draw()
	for _, v in ipairs(self.entities) do
		v:draw()
	end

	love.graphics.print(#self.entities, 10, 10)
end

function GameScene:onEnter()
	love.graphics.setBackgroundColor(255, 0, 0)
end

function GameScene:onExit()
end

function GameScene:add(e)
	table.insert(self.entities, e)
end

function GameScene:remove(e)
	for i, v in ipairs(entities) do
		if v == e then
			table.remove(entities, i)
			break
		end
	end
end

return GameScene