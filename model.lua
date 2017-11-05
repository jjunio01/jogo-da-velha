
model = {
	
	tabuleiro = {},
	jogador = nil
	
}


function model:verificarVencedor()

	--Verificar vencedor nas colunas
	for coluna = 1, 3 do

		if self.tabuleiro[1][coluna] ~= nil  and self.tabuleiro[1][coluna] == self.tabuleiro[2][coluna] and self.tabuleiro[2][coluna] == self.tabuleiro[3][coluna] then

			--[[self.tabuleiro[1][coluna] = "|"
			self.tabuleiro[2][coluna] = "|"
			self.tabuleiro[3][coluna] = "|"--]]
			return true
		end
	end

	--Verificar vencedor nas linhas
	for linha = 1, 3 do

		if self.tabuleiro[linha][1] ~= nil  and self.tabuleiro[linha][1] == self.tabuleiro[linha][2] and self.tabuleiro[linha][2] == self.tabuleiro[linha][3] then

			--[[self.tabuleiro[linha][1] = "-"
			self.tabuleiro[linha][2] = "-"
			self.tabuleiro[linha][3] = "-"--]]
			return true

		end

	end

	--Verificar vencedor na diagonal principal da matriz
	if self.tabuleiro[1][1] ~= nil and self.tabuleiro[1][1] == self.tabuleiro[2][2] and self.tabuleiro[2][2] == self.tabuleiro[3][3] then

		--[[self.tabuleiro[1][1] = "\\"
		self.tabuleiro[2][2] = "\\"
		self.tabuleiro[3][3] = "\\"--]]
		return true

	end

	--Verificar vencedor na diagonal secundária da matriz
	if self.tabuleiro[1][3] ~= nil and self.tabuleiro[1][3] == self.tabuleiro[2][2] and self.tabuleiro[2][2] == self.tabuleiro[3][1] then

		--[[self.tabuleiro[1][3] = "/"
		self.tabuleiro[2][2] = "/"
		self.tabuleiro[3][1] = "/"]]
		return true

	end

	return false

end

function model:criarTabuleiro()

	for linha = 1, 3 do

		self.tabuleiro[linha] = {}

		for coluna = 1, 3 do
			self.tabuleiro[linha][coluna] = nil
		end
	end
end


function model:verificarEmpate()
	
	local contador = 10

	for linha = 1, 3 do

		for coluna = 1 , 3 do

			if self.tabuleiro[linha][coluna] ~= nil then

				contador = contador - 1

			end
		end
	end

	if contador == 1 then

		return true

	end

	return false
end

return model
