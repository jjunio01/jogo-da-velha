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
		controller.modelTabuleiro.jogador = "X"
		atualizarJogador()
	else
		controller.modelTabuleiro.jogador = "O"
		atualizarJogador()
	end
	return controller.modelTabuleiro.jogador
end

function atualizarJogador()
	
	controleJogada = controleJogada + 1

end

function controller:realizarJogada(posicao)
	
	if posicao == 1 then
		local jogada = self.view.tabuleiro[1][1]
	end
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