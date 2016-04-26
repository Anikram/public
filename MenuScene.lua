local MenuScene = {}
MenuScene.__index = MenuScene
local MenuItem = require "MenuItem"

function MenuScene.new()
	local o = {
		entities = {},
		canvas = love.graphics.newCanvas(),
	}
	setmetatable(o, MenuScene)
	o:init()
	return o
end

function MenuScene:init()
	items = {"Start game","Multiplayer","Options","Quit"}

	for i, v in ipairs(items) do
		self:add(MenuItem.new(v, love.graphics.getWidth() / 2, 10 + 32 * i))
	end
end

function MenuScene:onEnter()
set_color("red")
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
