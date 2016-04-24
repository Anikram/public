local Scene = {
	current = nil
}

function Scene.switchScene(s)
	if Scene.current then
		Scene.current:onExit()
	end
	if s then
		s:onEnter()
		Scene.current = s
	end
end

--[[
	Scene

	:init()
	:update(dt)
	:draw()
	:onEnter()
	:onExit()
	:add(entity)
	:remove(entity)
]]

return Scene