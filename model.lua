
model = {
	
	tabuleiro = {},
	jogador = nil
	
}

function model:jogada()

end

function model:jogadorAtual()
	
end

function model:verificarVencedor()
	
end

function model:criarTabuleiro()

	for linha = 1, 3 do

		self.tabuleiro[linha] = {}

		for coluna = 1, 3 do
			self.tabuleiro[linha][coluna] = nil
		end
	end
	
end


return model
