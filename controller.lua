local view = require("view")

controller = {
	
	
	view = nil


}


function controller:draw()	
	self.view = view
	self.view:draw(self)
end



return controller