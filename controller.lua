local view = require("view")
local model = require("model")
local controleJogada = 2

controller = {	
	
	view = view,
	modelTabuleiro = model

}


function controller:draw()	
	self.view = view
	self.modelTabuleiro = model	
	self.view:draw(self)
	self.modelTabuleiro:criarTabuleiro()
end

function controller:jogadorAtual()
	
	if controleJogada % 2 == 0 then
		self.modelTabuleiro.jogador = "X"
		atualizarJogador()
	else
		self.modelTabuleiro.jogador = "O"
		atualizarJogador()
	end
	return self.modelTabuleiro.jogador
end

function atualizarJogador()
	
	controleJogada = controleJogada + 1

end

function controller:verificarTerminoJogo()
		
	if self.modelTabuleiro:verificarVencedor() then
		self.view:vencedor()
	else
		if self.modelTabuleiro:verificarEmpate() then
		self.view:empatou()
		end
	end
end

return controller