local Scene = require "Scene"
local MenuItem = require "MenuItem"

local MenuScene = {}
MenuScene.__index = MenuScene

function MenuScene.new()
	local o = {
		entities = {}
	}
	setmetatable(o, MenuScene)

	o:init()
	return o
end


function MenuScene:init()
	local items = {"Play", "Multiplayer", "Options", "Exit"}
	
	for i, v in ipairs(items) do
		self:add(MenuItem.new(v, love.graphics.getWidth() / 2, 10 + 32 * i))
	end
end

function MenuScene:update(dt)
	for _, v in ipairs(self.entities) do
		v:update(dt)
	end
end

function MenuScene:draw()
	for _, v in ipairs(self.entities) do
		v:draw()
	end
end
 
function MenuScene:onEnter()
	love.graphics.setBackgroundColor(255, 120, 80)
end

function MenuScene:onExit()
end

function MenuScene:add(e)
	table.insert(self.entities, e)
end

function MenuScene:remove(e)
	for i, v in ipairs(entities) do
		if v == e then
			table.remove(entities, i)
			break
		end
	end
end

return MenuScene