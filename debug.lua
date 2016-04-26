module(...,package.seeall)

local debug = {}
-- debug.Xframe = 10
-- debug.Yframe = 10
-- debug.smallFrameOx = 150
-- debug.smallFrameOy = 15
local canvas = love.graphics.newCanvas()

function debug:draw() --<== this method must been called, nut it isn't
	debug:load_canvas()
	return love.graphics.draw(canvas,0,0)
end

function debug:load_canvas()
	love.graphics.setCanvas(canvas)
	set_color("green")
	love.graphics.rectangle("line",5,5,width-10,height-10)
	--love.graphics.rectangle("line",width - debug.smallFrameOx,height - debug.smallFrameOy,debug.smallFrameOx-debug.Xframe,debug.smallFrameOy-debug.Yframe)
	set_color("red")
	love.graphics.print("FPS: "..love.timer.getFPS(),debug.smallFrameOx+5,debug.smallFrameOy+5)
	love.graphics.setCanvas()
end

return debug