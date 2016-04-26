scale = 1
deb = true 
width = love.graphics.getWidth()
height = love.graphics.getHeight()
local Scene = require "Scene"
local MenuScene = require "MenuScene"
local debug = require "debug"


function love.load()
	menu = MenuScene.new()

	
end


function love.draw()
	if Scene.current then
		Scene.current:darw()
	end
	if deb then
		debug:draw() --<== this guy must call draw method but it isn't
		love.graphics.print(tostring(debug.canvas),10,10)
		love.graphics.print(tostring(debug),10,20)
		--love.graphics.print(tostring(),10,30)
	end
end


function love.update(dt)
	if Scene.current then
		scene.current:update(dt)
	end
end

function set_color(x,y,z,w)
	x = x 
	y = y
	z = z
	w = w
	red = 0
	green = 0
	blue = 0
	al = 255 
	if type(x) ~= "table" then 
		if x ~= nil and y == nil and z == nil and w == nil then
			if tostring(x) == "red" then
				red = 255
			elseif tostring(x) == "green" then
				green = 255
			elseif tostring(x) == "blue" then
				blue = 255
			elseif tostring(x) == "white" then
				red,green,blue = 255,255,255
			end
		elseif x ~= nil and y ~= nil and z == nil and w == nil then	
			if tostring(x) == "red" then
				red = 255
				al = y
			elseif tostring(x) == "green" then
				green = 255
				al = y
			elseif tostring(x) == "blue" then
				blue = 255
				al = y
			elseif tostring(x) == "white" then
				red,green,blue = 255,255,255
				al = y
			end
		elseif x ~= nil and y ~= nil and z ~= nil  and w == nil then 
			red = x 
			green = y 
			blue = z
		elseif x ~= nil and y ~= nil and z ~= nil  and w ~= nil then 
			red = x 
			green = y 
			blue = z
			al = w
		end
	else 
		for i,v in ipairs(x) do
			if i == 1 then
				red = v 
				elseif i == 2 then 
					green = v 
					elseif i == 3 then
						blue = v 
						elseif i == 4 then
							al = v 
						end
		end
	end
		return love.graphics.setColor(red,green,blue,al)

end





