local Scene = {
	current = nil
}

Scene.__index = Scene 

function Scene:Switch_Scene(s)
	if Scene.current then
		Scene.current:onEnter()
	end
	if s then
		s:onExit()
		Scene.current = s
	end
end

return Scene
