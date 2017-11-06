-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local widget = require("widget")
local controlador = require("controller")

function toqueButton(event)
	if  "ended" == event.phase then
    
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



