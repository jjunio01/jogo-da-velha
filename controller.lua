local view = require("view")
local model = require("model")

controller = {	
	
	view = nil,
	modelTabuleiro = model

}


function controller:draw()	
	self.view = view
	self.model = model
	self.view:draw(self)
end

function controller:criarMeuTabuleiro()
	self.view:desenharTabuleiro()
end

return controller