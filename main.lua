local Scene = require "Scene"
local MenuScene = require "MenuScene"
local GameScene = require "GameScene"

function love.load()
	menuScene = MenuScene.new()
	gameScene = GameScene.new()
	Scene.switchScene(menuScene)
end

function love.update(dt)
	if Scene.current then
		Scene.current:update(dt)
	end
end

function love.keypressed(key)
	if key == "space" then
		Scene.switchScene(gameScene)
	end
end

function love.draw()
	if Scene.current then
		Scene.current:draw()
	end
end