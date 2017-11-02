view = {
	
	controlador = nil

}

function view:draw(controlador)
	self.controlador = controlador
	self:desenharCirculo()
	self:desenhar()
	self:desenharRetangulo()
end

function view:desenharCirculo()
	local circulo = display.newCircle(display.contentWidth/2, display.contentHeight/6, 30)
	local _self = self
	function circulo:touch(event)
		_self:desenharX()
	end

	circulo:addEventListener("touch")

end

function view:desenharRetangulo()
	local retangulo = display.newRect(display.contentWidth/6, display.contentHeight/6,
	 display.contentWidth/3 - 10,display.contentHeight/3 - 10)

	retangulo:setFillColor(black)

	local _self = self
	function retangulo:touch(event)
		_self:desenharX()
	end

	retangulo:addEventListener("touch")
end

function view:desenharX()
	local linhaUm = display.newLine(display.contentWidth/3, 0, 0,display.contentHeight/3)
	local linhaDois = display.newLine(0, 0,display.contentWidth/3 ,display.contentHeight/3)
end

function view:desenhar()

local	lineUm = display.newLine(0, display.contentHeight/3, display.contentWidth,display.contentHeight/3)
local	lineDois = display.newLine(0,display.contentHeight * 2/3, display.contentWidth,display.contentHeight * 2/3)

local	colunaUm = display.newLine(display.contentWidth/3, 0, display.contentWidth/3,display.contentHeight)
local	colunaDois = display.newLine(display.contentWidth * 2/3, 0, display.contentWidth * 2/3,display.contentHeight)
		
end

return view