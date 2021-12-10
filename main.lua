require("vector")
require("particle")

function love.load()
   width = love.graphics.getWidth()
   height = love.graphics.getHeight()

   system = ParticleSystem:create(Vector:create(width/2, height/2), 100)
   system2 = ParticleSystem:create(Vector:create(100, 100), 200)
   gravity = Vector:create(0, 0.1)
end

function love.update(dt)
  system:update()
  system:applyForce(gravity)
  system2:update()
  system2:applyForce(gravity)
end

function love.mousepressed(x,y,button)
	if button == 1 then 
  		system:scatter(x,y)
  		system2:scatter(x,y)
    end
end

function love.draw()
  system:draw()
  system2:draw()
end
