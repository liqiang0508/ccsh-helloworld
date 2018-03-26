
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

function MainScene:onCreate()
    local sprite=display.newSprite("HelloWorld.png")
        :move(display.center)
        :addTo(self)

    local prog = cc.GLProgram:create("shader.vsh","shader.fsh")
    prog:link()
    prog:updateUniforms()
    local progStat= cc.GLProgramState:create(prog)
    sprite:setGLProgramState(progStat)
end

return MainScene
