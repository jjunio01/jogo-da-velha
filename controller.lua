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
	print(posicao)
	if posicao == 1 then
		local jogada = self.view.tabuleiro[1][1]
	end
end

function controller:capturarEvento(valor)
		
		print("capturado")

print(valor)
	--self.realizarJogada()
end

return controller