-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here


 --local controlador = require("controller")
--controlador:draw()

local widget = require("widget")
local controlador = require("controller")

function toqueButton(event)
	if  "ended" == event.phase then
         print("Button - Principal")
         controlador:draw()

    end
end

local button1 = widget.newButton(
    {
        left = 100,
        top = 200,
        id = "button1",
        label = "PLAY",
        shape = "rect",
        onEvent = toqueButton
    }
)



