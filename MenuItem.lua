local MenuItem = {}
MenuItem.__index = MenuItem

function MenuItem.new(text, x, y)
	local o = {
		text = text,
		x = x,
		y = y
	}
	setmetatable(o, MenuItem)
	return o
end

function MenuItem:update(dt)
end

function MenuItem:draw()
	set_color("white")
	love.graphics.print(self.text, self.x, self.y)
	set_color()
end

return MenuItem